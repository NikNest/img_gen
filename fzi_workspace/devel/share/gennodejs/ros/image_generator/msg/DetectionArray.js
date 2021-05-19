// Auto-generated. Do not edit!

// (in-package image_generator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection = require('./Detection.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectionArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.camId = null;
      this.detections = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('camId')) {
        this.camId = initObj.camId
      }
      else {
        this.camId = 0;
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [camId]
    bufferOffset = _serializer.uint32(obj.camId, buffer, bufferOffset);
    // Serialize message field [detections]
    // Serialize the length for message field [detections]
    bufferOffset = _serializer.uint32(obj.detections.length, buffer, bufferOffset);
    obj.detections.forEach((val) => {
      bufferOffset = Detection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionArray
    let len;
    let data = new DetectionArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [camId]
    data.camId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [detections]
    // Deserialize array length for message field [detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detections[i] = Detection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detections.forEach((val) => {
      length += Detection.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_generator/DetectionArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '800cf52de8cbec7e2f1b32f57b694b11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header with timestamp and frame_id
    Header header
    
    # Id of camera
    uint32 camId
    
    # List of detections
    Detection[] detections
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: image_generator/Detection
    # Center of segmentation
    float32 cx
    float32 cy
    
    # Bounding box corners
    float32 x1
    float32 x2
    float32 y1
    float32 y2
    
    # The classification confidences (probabilities)
    float32[] scores
    
    # Enum for the obstacle classification result
    int16   ClassUnclassified = 0 
    int16   ClassUnknownSmall = 1
    int16   ClassUnknownBig = 2
    int16   ClassPedestrian = 3 
    int16   ClassMotorbike = 4
    int16   ClassCar = 5
    int16   ClassTruck = 6
    int16   ClassStructure_Pylon = 7
    int16   ClassStructure_Beacon = 8
    int16   ClassStructure_GuardRail = 9
    int16   ClassStructure_ConcreteBarrier = 10
    int16   ClassUnknown = 15
    int16   ClassBus = 16
    int16   ClassBicycle = 17
    int16   ClassTrafficLight = 18
    int16   ClassTrain = 19
    
    # The obstacle classification with the highest probability.
    #
    int16   classification
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectionArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.camId !== undefined) {
      resolved.camId = msg.camId;
    }
    else {
      resolved.camId = 0
    }

    if (msg.detections !== undefined) {
      resolved.detections = new Array(msg.detections.length);
      for (let i = 0; i < resolved.detections.length; ++i) {
        resolved.detections[i] = Detection.Resolve(msg.detections[i]);
      }
    }
    else {
      resolved.detections = []
    }

    return resolved;
    }
};

module.exports = DetectionArray;
