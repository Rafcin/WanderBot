// Auto-generated. Do not edit!

// (in-package ros_ultrasonic_bumper.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ultrasnd_bump_ranges {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_FL = null;
      this.sensor_FR = null;
      this.sensor_RR = null;
      this.sensor_RL = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_FL')) {
        this.sensor_FL = initObj.sensor_FL
      }
      else {
        this.sensor_FL = new sensor_msgs.msg.Range();
      }
      if (initObj.hasOwnProperty('sensor_FR')) {
        this.sensor_FR = initObj.sensor_FR
      }
      else {
        this.sensor_FR = new sensor_msgs.msg.Range();
      }
      if (initObj.hasOwnProperty('sensor_RR')) {
        this.sensor_RR = initObj.sensor_RR
      }
      else {
        this.sensor_RR = new sensor_msgs.msg.Range();
      }
      if (initObj.hasOwnProperty('sensor_RL')) {
        this.sensor_RL = initObj.sensor_RL
      }
      else {
        this.sensor_RL = new sensor_msgs.msg.Range();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultrasnd_bump_ranges
    // Serialize message field [sensor_FL]
    bufferOffset = sensor_msgs.msg.Range.serialize(obj.sensor_FL, buffer, bufferOffset);
    // Serialize message field [sensor_FR]
    bufferOffset = sensor_msgs.msg.Range.serialize(obj.sensor_FR, buffer, bufferOffset);
    // Serialize message field [sensor_RR]
    bufferOffset = sensor_msgs.msg.Range.serialize(obj.sensor_RR, buffer, bufferOffset);
    // Serialize message field [sensor_RL]
    bufferOffset = sensor_msgs.msg.Range.serialize(obj.sensor_RL, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultrasnd_bump_ranges
    let len;
    let data = new ultrasnd_bump_ranges(null);
    // Deserialize message field [sensor_FL]
    data.sensor_FL = sensor_msgs.msg.Range.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_FR]
    data.sensor_FR = sensor_msgs.msg.Range.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_RR]
    data.sensor_RR = sensor_msgs.msg.Range.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_RL]
    data.sensor_RL = sensor_msgs.msg.Range.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Range.getMessageSize(object.sensor_FL);
    length += sensor_msgs.msg.Range.getMessageSize(object.sensor_FR);
    length += sensor_msgs.msg.Range.getMessageSize(object.sensor_RR);
    length += sensor_msgs.msg.Range.getMessageSize(object.sensor_RL);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_ultrasonic_bumper/ultrasnd_bump_ranges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae0bc0ffa95c0c13bd881b387004144e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Four Ultrasonic Range Sensors
    
    #      --- Front Lf ----------- Front Rg ---
    #      |                                   |
    #      |                                   |
    #      |                                   |
    #      --- Rear Lf ------------ Rear Rg ----
    
    # Front Right
    sensor_msgs/Range sensor_FL
    
    # Front Left
    sensor_msgs/Range sensor_FR
    
    # Rear Left
    sensor_msgs/Range sensor_RR
    
    # Rear Right
    sensor_msgs/Range sensor_RL
    
    ================================================================================
    MSG: sensor_msgs/Range
    # Single range reading from an active ranger that emits energy and reports
    # one range reading that is valid along an arc at the distance measured. 
    # This message is  not appropriate for laser scanners. See the LaserScan
    # message if you are working with a laser scanner.
    
    # This message also can represent a fixed-distance (binary) ranger.  This
    # sensor will have min_range===max_range===distance of detection.
    # These sensors follow REP 117 and will output -Inf if the object is detected
    # and +Inf if the object is outside of the detection range.
    
    Header header           # timestamp in the header is the time the ranger
                            # returned the distance reading
    
    # Radiation type enums
    # If you want a value added to this list, send an email to the ros-users list
    uint8 ULTRASOUND=0
    uint8 INFRARED=1
    
    uint8 radiation_type    # the type of radiation used by the sensor
                            # (sound, IR, etc) [enum]
    
    float32 field_of_view   # the size of the arc that the distance reading is
                            # valid for [rad]
                            # the object causing the range reading may have
                            # been anywhere within -field_of_view/2 and
                            # field_of_view/2 at the measured range. 
                            # 0 angle corresponds to the x-axis of the sensor.
    
    float32 min_range       # minimum range value [m]
    float32 max_range       # maximum range value [m]
                            # Fixed distance rangers require min_range==max_range
    
    float32 range           # range data [m]
                            # (Note: values < range_min or > range_max
                            # should be discarded)
                            # Fixed distance rangers only output -Inf or +Inf.
                            # -Inf represents a detection within fixed distance.
                            # (Detection too close to the sensor to quantify)
                            # +Inf represents no detection within the fixed distance.
                            # (Object out of range)
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
    const resolved = new ultrasnd_bump_ranges(null);
    if (msg.sensor_FL !== undefined) {
      resolved.sensor_FL = sensor_msgs.msg.Range.Resolve(msg.sensor_FL)
    }
    else {
      resolved.sensor_FL = new sensor_msgs.msg.Range()
    }

    if (msg.sensor_FR !== undefined) {
      resolved.sensor_FR = sensor_msgs.msg.Range.Resolve(msg.sensor_FR)
    }
    else {
      resolved.sensor_FR = new sensor_msgs.msg.Range()
    }

    if (msg.sensor_RR !== undefined) {
      resolved.sensor_RR = sensor_msgs.msg.Range.Resolve(msg.sensor_RR)
    }
    else {
      resolved.sensor_RR = new sensor_msgs.msg.Range()
    }

    if (msg.sensor_RL !== undefined) {
      resolved.sensor_RL = sensor_msgs.msg.Range.Resolve(msg.sensor_RL)
    }
    else {
      resolved.sensor_RL = new sensor_msgs.msg.Range()
    }

    return resolved;
    }
};

module.exports = ultrasnd_bump_ranges;
