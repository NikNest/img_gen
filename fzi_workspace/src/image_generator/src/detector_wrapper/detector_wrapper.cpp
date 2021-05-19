#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
#include <opencv2/opencv_modules.hpp>
#include <opencv2/core/utils/filesystem.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "detetor_wrapper.h"

#include "image_generator/DetectionArray.h"
#include "image_generator/Detection.h"
#include "image_generator/ObjectCount.h"

// #include <XmlRpcValue.h>

XmlRpc::XmlRpcValue DetectionWrapper::getNextTimestamp() {
    if(timestamp_iter == labels.end()) {
        timestamp_iter = labels.begin();
    } else {
        timestamp_iter++;
        if(timestamp_iter == labels.end()) {
            timestamp_iter = labels.begin();
        }
    }
    return timestamp_iter->second;
}

void DetectionWrapper::handleImage(const sensor_msgs::ImageConstPtr& image_raw_msg) {
    ROS_INFO("Img recieved");
    
    image_generator::ObjectCount objcount;
    objcount.header.stamp = image_raw_msg->header.stamp;
    
    XmlRpc::XmlRpcValue timestamp = getNextTimestamp();
    ROS_INFO("next timestamp");    
    
    int count = timestamp[0];
    // ROS_INFO("obj count %d", count);
    objcount.count = count;
    object_count_pub.publish(objcount);

    XmlRpc::XmlRpcValue camIds = timestamp[1];
    for (auto camIdIt = camIds.begin(); camIdIt != camIds.end(); camIdIt++) {
        ROS_INFO("next camid");
        image_generator::DetectionArray detections;
        detections.header.stamp = image_raw_msg->header.stamp;
        detections.camId = std::stoi(camIdIt->first);
        // ROS_INFO("camid %s", camIdIt->first.c_str());
        XmlRpc::XmlRpcValue detectionsXml = camIdIt->second;
        // ROS_INFO("detections size %d", detectionsXml.size());
        for (int i = 0; i < detectionsXml.size(); i++) {
            ROS_INFO("next detection");
            XmlRpc::XmlRpcValue detectionIt = detectionsXml[i];
            // ROS_INFO("detection size %d", detectionIt.size());
            image_generator::Detection detection;
            detection.cx = (int)detectionIt[0];
            detection.cy = (int)detectionIt[1];
            detection.x1 = (int)detectionIt[2];
            detection.x2 = (int)detectionIt[3];
            detection.y1 = (int)detectionIt[4];
            detection.y2 = (int)detectionIt[5];
            detection.classification = (int)detectionIt[7];
            // ROS_INFO("detection's simple fields are initialized");
            
            XmlRpc::XmlRpcValue scoresXml = detectionIt[6];
            // ROS_INFO("scoresXml were initialized");
            ROS_INFO("class %d", (int)detectionIt[7]);
            // ROS_INFO("scoreXml valid %d", scoresXml.valid());
            for (int i = 0; i < scoresXml.size(); i++){
                double val = scoresXml[i];
                // ROS_INFO("val in class %f", val);
                detection.scores.push_back(val);
            }

            detections.detections.push_back(detection);
        }
        detections_pub.publish(detections);
    }

    
    
}

void DetectionWrapper::init() {
  
    img_sub = img_transport.subscribe("image_raw", 1, &DetectionWrapper::handleImage, this);
    
    detections_pub = nh.advertise<image_generator::DetectionArray>("detections", 1);
    object_count_pub = nh.advertise<image_generator::ObjectCount>("object_count", 1);

    // ros::param::get("image_loader/detections_path", detections_path);
    labels;
    nh.getParam("detector_wrapper/default/labels", labels);
    timestamp_iter = labels.end();
    
    // std::map<std::string, std::string> classes;
    // nh.getParam("detector_wrapper/default/classes", classes);
    // for (auto k : classes) {
    //     ROS_INFO("k: %s, v: %s", k.first.c_str(), k.second.c_str());
    // }
    ///////////////////////////
    // XmlRpc::XmlRpcValue v;
    // nh.getParam("detector_wrapper/default/detection", v);
    // for (auto i = v.begin(); i != v.end(); i++) {
    //     ROS_INFO("k: %s", i->first.c_str());
    //     for (int q = 1; q < i->second.size(); q++) {
    //         XmlRpc::XmlRpcValue subd = i->second[q];
    //         for (auto j = subd.begin(); j != subd.end(); j++) {
    //             ROS_INFO("%s[", j->first.c_str());
    //             XmlRpc::XmlRpcValue subv = j->second;
    //             for (int o = 0; o < subv.size(); o++) {
    //                 XmlRpc::XmlRpcValue subsubv = subv[o];
    //                 for (int y = 0; y < subsubv.size(); y++) {
    //                     int t = (int)subsubv[y];
    //                     ROS_INFO("%d", t);
    //                 }
    //             }
    //             ROS_INFO("]");
    //         }
    //     }
    // }
    ////////////////
    // for(int i =0; i < v.size(); i++)
    // {
    //   std::cout << "\n===========\n" << v[i];
    // }
    // int i1 = v[0];
    // int i2 = v[1];
    // int i3 = v[2];
    // int i4 = v[3];
    // XmlRpc::XmlRpcValue vecXml = v[3];
    // std::vector<double> vec; // = {vecXml[0], vecXml[1], vecXml[2], vecXml[3]};
    // for (int i = 0; i < vecXml.size(); i++){
    //     double val = vecXml[i];
    //     // ROS_INFO("vec[%d]: %f", i, val);
    //     vec.push_back(val);
    // }
    
    // int i4 = v[4];
    // int i5 = v[5];
    // ROS_INFO("i1: %d, i2: %d, i3: %d, i4: %d, i5: %d", i1, i2, i3, i4, i5);
    // ROS_INFO("vec: {%f, %f, %f, %f}", vec[0], vec[1], vec[2], vec[3]);
     
}

DetectionWrapper::DetectionWrapper(ros::NodeHandle &_nh) : nh(_nh), img_transport(_nh) {

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "detector_wrapper");
    ros::NodeHandle nh;


    DetectionWrapper detectionWrapper(nh);

    detectionWrapper.init();

    ros::spin();
    return 0;
}