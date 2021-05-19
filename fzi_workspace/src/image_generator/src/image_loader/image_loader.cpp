#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
#include <opencv2/opencv_modules.hpp>
#include <opencv2/core/utils/filesystem.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

#include <regex>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_loader");
  ros::NodeHandle nh;
  ros::Publisher img_pub = nh.advertise<sensor_msgs::Image>("image_raw", 1);
  
  // image_transport::ImageTransport img_transport(nh);
  // image_transport::Publisher img_publisher = img_transport.advertise("img_raw", 1);


  std::string load_path;
  float freq_orig;
  bool looped;

  ros::param::get("image_loader/load_path", load_path);
  ros::param::get("image_loader/pub_freq", freq_orig);
  ros::param::get("image_loader/looped", looped);

  
  // ros::Rate loop_rate(stoi(freq_orig));
  ros::Rate loop_rate(freq_orig);

  std::vector<cv::String> load_dir;
  std::vector<cv::String> file_names;
  
  cv::utils::fs::glob(load_path, "*", load_dir);
  std::regex rx("(.*)(\\.jpeg|\\.png|\\.jpg)");

  for (auto name : load_dir) {
    bool match = std::regex_match(name.c_str(), rx);
    if(match) {
      file_names.push_back(name);
    }
  }
  
  std::vector<cv::Mat> images;
  for (auto name : file_names) {
    auto temp_img = cv::imread(name);
    images.push_back(temp_img);
  } 

  size_t i = 0;
  size_t num_files = images.size();
  while (ros::ok())
  {
  cv::Mat image = images[i % num_files];  
  sensor_msgs::Image img_msg; 
  std_msgs::Header header; 
  header.stamp = ros::Time::now(); // time
  cv_bridge::CvImage img_bridge = cv_bridge::CvImage(header, sensor_msgs::image_encodings::BGR8, image);
  img_bridge.toImageMsg(img_msg); 
  
  img_pub.publish(img_msg); 
  ROS_INFO("img published");

  // sensor_msgs::ImagePtr img_msg_ptr = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
  // img_publisher.publish(img_msg_ptr);
  ros::spinOnce();

  loop_rate.sleep();
  i++;
  if (!looped && (i % num_files == 0)) {
    break;
  } 
  }


  return 0;
}