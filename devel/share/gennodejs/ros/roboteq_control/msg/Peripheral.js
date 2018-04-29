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

class Peripheral {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pulse_in = null;
      this.analog = null;
      this.digital_in = null;
      this.digital_out = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pulse_in')) {
        this.pulse_in = initObj.pulse_in
      }
      else {
        this.pulse_in = [];
      }
      if (initObj.hasOwnProperty('analog')) {
        this.analog = initObj.analog
      }
      else {
        this.analog = [];
      }
      if (initObj.hasOwnProperty('digital_in')) {
        this.digital_in = initObj.digital_in
      }
      else {
        this.digital_in = [];
      }
      if (initObj.hasOwnProperty('digital_out')) {
        this.digital_out = initObj.digital_out
      }
      else {
        this.digital_out = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Peripheral
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pulse_in]
    bufferOffset = _arraySerializer.uint16(obj.pulse_in, buffer, bufferOffset, null);
    // Serialize message field [analog]
    bufferOffset = _arraySerializer.float64(obj.analog, buffer, bufferOffset, null);
    // Serialize message field [digital_in]
    bufferOffset = _arraySerializer.uint8(obj.digital_in, buffer, bufferOffset, null);
    // Serialize message field [digital_out]
    bufferOffset = _arraySerializer.uint8(obj.digital_out, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Peripheral
    let len;
    let data = new Peripheral(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pulse_in]
    data.pulse_in = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [analog]
    data.analog = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [digital_in]
    data.digital_in = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [digital_out]
    data.digital_out = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.pulse_in.length;
    length += 8 * object.analog.length;
    length += object.digital_in.length;
    length += object.digital_out.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboteq_control/Peripheral';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c04fdd000fd83fd2a224fbc2a13fdda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #GPIO
    
    #Pulse in [pag. 256]
    uint16[] pulse_in
    
    #Analog in [pag. 231]
    float64[] analog
    
    #Digital input [pag. 242]
    uint8[] digital_in
    
    #Digital outut [pag. 242]
    uint8[] digital_out
    
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
    const resolved = new Peripheral(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pulse_in !== undefined) {
      resolved.pulse_in = msg.pulse_in;
    }
    else {
      resolved.pulse_in = []
    }

    if (msg.analog !== undefined) {
      resolved.analog = msg.analog;
    }
    else {
      resolved.analog = []
    }

    if (msg.digital_in !== undefined) {
      resolved.digital_in = msg.digital_in;
    }
    else {
      resolved.digital_in = []
    }

    if (msg.digital_out !== undefined) {
      resolved.digital_out = msg.digital_out;
    }
    else {
      resolved.digital_out = []
    }

    return resolved;
    }
};

module.exports = Peripheral;
