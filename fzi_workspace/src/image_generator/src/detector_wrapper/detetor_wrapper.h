#ifndef DETECTION_WRAPPER
#define DETECTION_WRAPPER
#include <opencv2/opencv.hpp>
#include <opencv2/opencv_modules.hpp>
#include <opencv2/core/utils/filesystem.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "ros/ros.h"
#include <image_transport/image_transport.h>
#include <memory>

class DetectionWrapper {
    size_t label_count = 0;
    image_transport::Subscriber img_sub;
    ros::Publisher detections_pub;
    ros::Publisher object_count_pub;
    ros::NodeHandle nh;
    XmlRpc::XmlRpcValue labels;
    XmlRpc::XmlRpcValue::iterator timestamp_iter;
    // std::string detections_path;
    image_transport::ImageTransport img_transport;

    public:
        DetectionWrapper(ros::NodeHandle& _nh);
        XmlRpc::XmlRpcValue getNextTimestamp();
        void handleImage(const sensor_msgs::ImageConstPtr& image_raw_msg);
        void init();
};

#endif // DETECTION_WRAPPER