// Auto-generated. Do not edit!

// (in-package image_generator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cx = null;
      this.cy = null;
      this.x1 = null;
      this.x2 = null;
      this.y1 = null;
      this.y2 = null;
      this.scores = null;
      this.classification = null;
    }
    else {
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = 0.0;
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = 0.0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0.0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0.0;
      }
      if (initObj.hasOwnProperty('scores')) {
        this.scores = initObj.scores
      }
      else {
        this.scores = [];
      }
      if (initObj.hasOwnProperty('classification')) {
        this.classification = initObj.classification
      }
      else {
        this.classification = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Detection
    // Serialize message field [cx]
    bufferOffset = _serializer.float32(obj.cx, buffer, bufferOffset);
    // Serialize message field [cy]
    bufferOffset = _serializer.float32(obj.cy, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float32(obj.x1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float32(obj.x2, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float32(obj.y1, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float32(obj.y2, buffer, bufferOffset);
    // Serialize message field [scores]
    bufferOffset = _arraySerializer.float32(obj.scores, buffer, bufferOffset, null);
    // Serialize message field [classification]
    bufferOffset = _serializer.int16(obj.classification, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection
    let len;
    let data = new Detection(null);
    // Deserialize message field [cx]
    data.cx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cy]
    data.cy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scores]
    data.scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [classification]
    data.classification = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.scores.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_generator/Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81bf65ed206cd9d9e7ff61e00901db1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Detection(null);
    if (msg.cx !== undefined) {
      resolved.cx = msg.cx;
    }
    else {
      resolved.cx = 0.0
    }

    if (msg.cy !== undefined) {
      resolved.cy = msg.cy;
    }
    else {
      resolved.cy = 0.0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0.0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0.0
    }

    if (msg.scores !== undefined) {
      resolved.scores = msg.scores;
    }
    else {
      resolved.scores = []
    }

    if (msg.classification !== undefined) {
      resolved.classification = msg.classification;
    }
    else {
      resolved.classification = 0
    }

    return resolved;
    }
};

// Constants for message
Detection.Constants = {
  CLASSUNCLASSIFIED: 0,
  CLASSUNKNOWNSMALL: 1,
  CLASSUNKNOWNBIG: 2,
  CLASSPEDESTRIAN: 3,
  CLASSMOTORBIKE: 4,
  CLASSCAR: 5,
  CLASSTRUCK: 6,
  CLASSSTRUCTURE_PYLON: 7,
  CLASSSTRUCTURE_BEACON: 8,
  CLASSSTRUCTURE_GUARDRAIL: 9,
  CLASSSTRUCTURE_CONCRETEBARRIER: 10,
  CLASSUNKNOWN: 15,
  CLASSBUS: 16,
  CLASSBICYCLE: 17,
  CLASSTRAFFICLIGHT: 18,
  CLASSTRAIN: 19,
}

module.exports = Detection;
