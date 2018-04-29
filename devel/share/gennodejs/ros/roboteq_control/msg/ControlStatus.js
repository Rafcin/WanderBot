// Auto-generated. Do not edit!

// (in-package roboteq_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pwm = null;
      this.reference = null;
      this.feedback = null;
      this.loop_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pwm')) {
        this.pwm = initObj.pwm
      }
      else {
        this.pwm = 0.0;
      }
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = 0.0;
      }
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = 0.0;
      }
      if (initObj.hasOwnProperty('loop_error')) {
        this.loop_error = initObj.loop_error
      }
      else {
        this.loop_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pwm]
    bufferOffset = _serializer.float64(obj.pwm, buffer, bufferOffset);
    // Serialize message field [reference]
    bufferOffset = _serializer.float64(obj.reference, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.float64(obj.feedback, buffer, bufferOffset);
    // Serialize message field [loop_error]
    bufferOffset = _serializer.float64(obj.loop_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlStatus
    let len;
    let data = new ControlStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pwm]
    data.pwm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [reference]
    data.reference = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [loop_error]
    data.loop_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboteq_control/ControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67f973d0cebdda296868bd3530b250ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 50Hz feedback message for controls purposes
    Header header
    
    # PWM
    float64 pwm
    
    # reference
    float64 reference
    
    # feedback
    float64 feedback
    
    # Loop error
    float64 loop_error
    
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
    const resolved = new ControlStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pwm !== undefined) {
      resolved.pwm = msg.pwm;
    }
    else {
      resolved.pwm = 0.0
    }

    if (msg.reference !== undefined) {
      resolved.reference = msg.reference;
    }
    else {
      resolved.reference = 0.0
    }

    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = 0.0
    }

    if (msg.loop_error !== undefined) {
      resolved.loop_error = msg.loop_error;
    }
    else {
      resolved.loop_error = 0.0
    }

    return resolved;
    }
};

module.exports = ControlStatus;
