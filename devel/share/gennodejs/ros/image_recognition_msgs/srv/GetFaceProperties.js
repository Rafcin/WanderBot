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

let FaceProperties = require('../msg/FaceProperties.js');

//-----------------------------------------------------------

class GetFacePropertiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.face_image_array = null;
    }
    else {
      if (initObj.hasOwnProperty('face_image_array')) {
        this.face_image_array = initObj.face_image_array
      }
      else {
        this.face_image_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFacePropertiesRequest
    // Serialize message field [face_image_array]
    // Serialize the length for message field [face_image_array]
    bufferOffset = _serializer.uint32(obj.face_image_array.length, buffer, bufferOffset);
    obj.face_image_array.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Image.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFacePropertiesRequest
    let len;
    let data = new GetFacePropertiesRequest(null);
    // Deserialize message field [face_image_array]
    // Deserialize array length for message field [face_image_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.face_image_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.face_image_array[i] = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.face_image_array.forEach((val) => {
      length += sensor_msgs.msg.Image.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'image_recognition_msgs/GetFacePropertiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3bad4931a01d73662add4a92636467c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    sensor_msgs/Image[] face_image_array
    
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
    const resolved = new GetFacePropertiesRequest(null);
    if (msg.face_image_array !== undefined) {
      resolved.face_image_array = new Array(msg.face_image_array.length);
      for (let i = 0; i < resolved.face_image_array.length; ++i) {
        resolved.face_image_array[i] = sensor_msgs.msg.Image.Resolve(msg.face_image_array[i]);
      }
    }
    else {
      resolved.face_image_array = []
    }

    return resolved;
    }
};

class GetFacePropertiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.properties_array = null;
    }
    else {
      if (initObj.hasOwnProperty('properties_array')) {
        this.properties_array = initObj.properties_array
      }
      else {
        this.properties_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFacePropertiesResponse
    // Serialize message field [properties_array]
    // Serialize the length for message field [properties_array]
    bufferOffset = _serializer.uint32(obj.properties_array.length, buffer, bufferOffset);
    obj.properties_array.forEach((val) => {
      bufferOffset = FaceProperties.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFacePropertiesResponse
    let len;
    let data = new GetFacePropertiesResponse(null);
    // Deserialize message field [properties_array]
    // Deserialize array length for message field [properties_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.properties_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.properties_array[i] = FaceProperties.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.properties_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'image_recognition_msgs/GetFacePropertiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0520558de71d14fd1e03c6bfdd5c8935';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FaceProperties[] properties_array
    
    
    ================================================================================
    MSG: image_recognition_msgs/FaceProperties
    # Face properties
    
    # Gender definitions
    uint8 MALE=0
    uint8 FEMALE=1
    
    # Gender, either MALE of FEMALE
    uint8 gender
    
    # The age of the face
    uint8 age
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFacePropertiesResponse(null);
    if (msg.properties_array !== undefined) {
      resolved.properties_array = new Array(msg.properties_array.length);
      for (let i = 0; i < resolved.properties_array.length; ++i) {
        resolved.properties_array[i] = FaceProperties.Resolve(msg.properties_array[i]);
      }
    }
    else {
      resolved.properties_array = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetFacePropertiesRequest,
  Response: GetFacePropertiesResponse,
  md5sum() { return 'dafbff820ead30e2dcba0dd56efd35dd'; },
  datatype() { return 'image_recognition_msgs/GetFaceProperties'; }
};
