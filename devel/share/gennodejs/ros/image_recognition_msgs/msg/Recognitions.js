// Auto-generated. Do not edit!

// (in-package image_recognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Recognition = require('./Recognition.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Recognitions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.recognitions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('recognitions')) {
        this.recognitions = initObj.recognitions
      }
      else {
        this.recognitions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Recognitions
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [recognitions]
    // Serialize the length for message field [recognitions]
    bufferOffset = _serializer.uint32(obj.recognitions.length, buffer, bufferOffset);
    obj.recognitions.forEach((val) => {
      bufferOffset = Recognition.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Recognitions
    let len;
    let data = new Recognitions(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [recognitions]
    // Deserialize array length for message field [recognitions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.recognitions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.recognitions[i] = Recognition.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.recognitions.forEach((val) => {
      length += Recognition.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_recognition_msgs/Recognitions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ecb10adb1c61d004d2e3c9a37418093';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    Recognition[] recognitions
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: image_recognition_msgs/Recognition
    # A recognition in an image region of interest (roi) that is described by a
    # categorical distribution that contains of labels with their probabilities.
    # An optional group_id can be specified to group recognitions together
    
    CategoricalDistribution categorical_distribution
    sensor_msgs/RegionOfInterest roi
    uint32 group_id
    ================================================================================
    MSG: image_recognition_msgs/CategoricalDistribution
    # Categorical distribution; if the probability of an element is below the unknown
    # probability, it can be classified as unknown
    CategoryProbability[] probabilities
    float32 unknown_probability
    
    ================================================================================
    MSG: image_recognition_msgs/CategoryProbability
    # A category (label) with its probability (probability) that ranges from 0..1
    string  label
    float32 probability
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Recognitions(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.recognitions !== undefined) {
      resolved.recognitions = new Array(msg.recognitions.length);
      for (let i = 0; i < resolved.recognitions.length; ++i) {
        resolved.recognitions[i] = Recognition.Resolve(msg.recognitions[i]);
      }
    }
    else {
      resolved.recognitions = []
    }

    return resolved;
    }
};

module.exports = Recognitions;
