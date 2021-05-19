#include <opencv2/core.hpp>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/Image.h>
#include "image_generator/DetectionArray.h"
#include <cv_bridge/cv_bridge.h>
// #include <sensor_msgs/CameraInfo.h>
#include "image_generator/ObjectCount.h"
#include "bb_drawer.h"

// using namespace sensor_msgs;
// using namespace message_filters;

void BBDrawer::drawBB(const sensor_msgs::ImageConstPtr& image_raw_msg, const image_generator::ObjectCountConstPtr& objcount_msg, const image_generator::DetectionArrayConstPtr& detections_msg)
{
  cv_bridge::CvImageConstPtr cv_ptr_raw;
  cv_ptr_raw = cv_bridge::toCvShare(image_raw_msg, sensor_msgs::image_encodings::RGB8);

  cv::Mat image = cv_ptr_raw->image;
  cv::Mat img_debug = image.clone();
  // Converts an image from one color space to another.
  // cv::cvtColor(img_debug, img_debug, CV_GRAY2BGR);

  // extrinsic_calibration_.printExtrinsicParams(image, img_debug);
  // Funktionsaufruf zur Implementierung hier
  auto detectionsVec = detections_msg->detections;
  int color_offset = 20;
  cv::Scalar current_color(255, 0, 0);
  for (auto detection_msg : detectionsVec) {
    cv::Rect bb(detection_msg.x1, detection_msg.y1, detection_msg.x2, detection_msg.y2);
    cv::rectangle(img_debug, bb, current_color, 2);
    int fontSize = 1 + (5 * (bb.height * bb.width) / (float)(image.rows * image.cols));
    cv::putText(img_debug, std::string("id: " + std::to_string(detection_msg.classification)), cv::Point(detection_msg.cx, detection_msg.cy), 1, fontSize, current_color);
    current_color = cv::Scalar(((int)current_color[0] + 80) % 255, ((int)current_color[1] + 20) % 255, ((int)current_color[2] + 50) % 255);
  }
  int fontSize = std::ceil(((image.rows * image.cols) / 10000.));
  cv::putText(img_debug, std::string("obj count: " + std::to_string(objcount_msg->count)), cv::Point(20, 20), 1, fontSize, cv::Scalar(255, 0, 0));

  // publish img_debug
  cv_bridge::CvImage debug_msg;
  debug_msg.header = image_raw_msg->header;
  debug_msg.encoding = sensor_msgs::image_encodings::RGB8;
  debug_msg.image = img_debug;
  debug_img.publish(debug_msg.toImageMsg());
}

void BBDrawer::init() {
  debug_img = nh.advertise<sensor_msgs::Image>("image_debug", 1);
}


BBDrawer::BBDrawer(ros::NodeHandle& _nh) : nh(_nh) {}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "bb_drawer");

  ros::NodeHandle nh;
  BBDrawer drawer(nh);
  drawer.init();

  message_filters::Subscriber<sensor_msgs::Image> image_sub(nh, "image_raw", 1);
  // message_filters::Subscriber<sensor_msgs::CameraInfo> info_sub(nh, "camera_info", 1);
  message_filters::Subscriber<image_generator::ObjectCount> objcount_sub(nh, "object_count", 1);
  message_filters::Subscriber<image_generator::DetectionArray> detections_sub(nh, "detections", 1);
  message_filters::TimeSynchronizer<sensor_msgs::Image, image_generator::ObjectCount, image_generator::DetectionArray> sync(image_sub, objcount_sub, detections_sub, 10);
  sync.registerCallback(boost::bind(&BBDrawer::drawBB, &drawer, _1, _2, _3));

  ros::spin();

  return 0;
}