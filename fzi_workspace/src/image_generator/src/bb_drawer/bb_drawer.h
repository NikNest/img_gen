#ifndef BB_DRAWER_H
#define BB_DRAWER_H
#include "ros/ros.h"
#include <image_transport/image_transport.h>
#include <memory>
#include <image_transport/image_transport.h>
#include "image_generator/DetectionArray.h"
#include "image_generator/Detection.h"
#include "image_generator/ObjectCount.h"
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>


class BBDrawer {
    // std::vector<sensor_msgs::Image> recImgs;
    // std::vector<image_generator::ObjectCount> objcount;
    // std::vector<image_generator::DetectionArray> detections;
    ros::Publisher debug_img;
    // ros::Subscriber bb_sub;
    // ros::Subscriber objCount_sub;
    // ros::Subscriber img_sub;
    // message_filters::Subscriber<sensor_msgs::Image> image_sub;
    // message_filters::Subscriber<image_generator::ObjectCount> objCount_sub;
    // message_filters::Subscriber<image_generator::DetectionArray> detections_sub;
    
  
    ros::NodeHandle nh;
    // image_transport::ImageTransport img_transport;


    public:
        BBDrawer(ros::NodeHandle& _nh);
        void drawBB(const sensor_msgs::ImageConstPtr& image, const image_generator::ObjectCountConstPtr& objcount_msg, const image_generator::DetectionArrayConstPtr& detections_msg);
        void init();
};

#endif // BB_DRAWER_H