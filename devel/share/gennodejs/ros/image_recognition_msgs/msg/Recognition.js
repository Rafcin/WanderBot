// Auto-generated. Do not edit!

// (in-package image_recognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CategoricalDistribution = require('./CategoricalDistribution.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Recognition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.categorical_distribution = null;
      this.roi = null;
      this.group_id = null;
    }
    else {
      if (initObj.hasOwnProperty('categorical_distribution')) {
        this.categorical_distribution = initObj.categorical_distribution
      }
      else {
        this.categorical_distribution = new CategoricalDistribution();
      }
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new sensor_msgs.msg.RegionOfInterest();
      }
      if (initObj.hasOwnProperty('group_id')) {
        this.group_id = initObj.group_id
      }
      else {
        this.group_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Recognition
    // Serialize message field [categorical_distribution]
    bufferOffset = CategoricalDistribution.serialize(obj.categorical_distribution, buffer, bufferOffset);
    // Serialize message field [roi]
    bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(obj.roi, buffer, bufferOffset);
    // Serialize message field [group_id]
    bufferOffset = _serializer.uint32(obj.group_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Recognition
    let len;
    let data = new Recognition(null);
    // Deserialize message field [categorical_distribution]
    data.categorical_distribution = CategoricalDistribution.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi]
    data.roi = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_id]
    data.group_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CategoricalDistribution.getMessageSize(object.categorical_distribution);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_recognition_msgs/Recognition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27e1989277b4d204ee94a720e6ebc927';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Recognition(null);
    if (msg.categorical_distribution !== undefined) {
      resolved.categorical_distribution = CategoricalDistribution.Resolve(msg.categorical_distribution)
    }
    else {
      resolved.categorical_distribution = new CategoricalDistribution()
    }

    if (msg.roi !== undefined) {
      resolved.roi = sensor_msgs.msg.RegionOfInterest.Resolve(msg.roi)
    }
    else {
      resolved.roi = new sensor_msgs.msg.RegionOfInterest()
    }

    if (msg.group_id !== undefined) {
      resolved.group_id = msg.group_id;
    }
    else {
      resolved.group_id = 0
    }

    return resolved;
    }
};

module.exports = Recognition;
