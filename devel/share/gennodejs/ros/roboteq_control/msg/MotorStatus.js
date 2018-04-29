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

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.volts = null;
      this.amps_motor = null;
      this.amps_batt = null;
      this.track = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('volts')) {
        this.volts = initObj.volts
      }
      else {
        this.volts = 0.0;
      }
      if (initObj.hasOwnProperty('amps_motor')) {
        this.amps_motor = initObj.amps_motor
      }
      else {
        this.amps_motor = 0.0;
      }
      if (initObj.hasOwnProperty('amps_batt')) {
        this.amps_batt = initObj.amps_batt
      }
      else {
        this.amps_batt = 0.0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [volts]
    bufferOffset = _serializer.float64(obj.volts, buffer, bufferOffset);
    // Serialize message field [amps_motor]
    bufferOffset = _serializer.float64(obj.amps_motor, buffer, bufferOffset);
    // Serialize message field [amps_batt]
    bufferOffset = _serializer.float64(obj.amps_batt, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = _serializer.float64(obj.track, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [volts]
    data.volts = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [amps_motor]
    data.amps_motor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [amps_batt]
    data.amps_batt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboteq_control/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f79b5306cd75663999e1a992e3b8a85e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 50Hz feedback message for controls purposes
    Header header
    
    # Electrical power supply to the driver (V)
    float64 volts
    
    # Current flowing in the motors (A)
    float64 amps_motor
    float64 amps_batt
    
    # Tracks
    float64 track
    
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
    const resolved = new MotorStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.volts !== undefined) {
      resolved.volts = msg.volts;
    }
    else {
      resolved.volts = 0.0
    }

    if (msg.amps_motor !== undefined) {
      resolved.amps_motor = msg.amps_motor;
    }
    else {
      resolved.amps_motor = 0.0
    }

    if (msg.amps_batt !== undefined) {
      resolved.amps_batt = msg.amps_batt;
    }
    else {
      resolved.amps_batt = 0.0
    }

    if (msg.track !== undefined) {
      resolved.track = msg.track;
    }
    else {
      resolved.track = 0.0
    }

    return resolved;
    }
};

module.exports = MotorStatus;
