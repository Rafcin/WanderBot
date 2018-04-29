// Auto-generated. Do not edit!

// (in-package image_recognition_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let Recognition = require('../msg/Recognition.js');

//-----------------------------------------------------------

class RecognizeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeRequest
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeRequest
    let len;
    let data = new RecognizeRequest(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'image_recognition_msgs/RecognizeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b13d2865c5af2a64e6e30ab1b56e1dd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    sensor_msgs/Image image
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of cameara
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeRequest(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class RecognizeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recognitions = null;
    }
    else {
      if (initObj.hasOwnProperty('recognitions')) {
        this.recognitions = initObj.recognitions
      }
      else {
        this.recognitions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeResponse
    // Serialize message field [recognitions]
    // Serialize the length for message field [recognitions]
    bufferOffset = _serializer.uint32(obj.recognitions.length, buffer, bufferOffset);
    obj.recognitions.forEach((val) => {
      bufferOffset = Recognition.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeResponse
    let len;
    let data = new RecognizeResponse(null);
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
    object.recognitions.forEach((val) => {
      length += Recognition.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'image_recognition_msgs/RecognizeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dbc952c2a7a014a42e0178efec6c0c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Recognition[] recognitions
    
    
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
    const resolved = new RecognizeResponse(null);
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

module.exports = {
  Request: RecognizeRequest,
  Response: RecognizeResponse,
  md5sum() { return 'bc43416498cf4305105098e8e66a9de0'; },
  datatype() { return 'image_recognition_msgs/Recognize'; }
};
