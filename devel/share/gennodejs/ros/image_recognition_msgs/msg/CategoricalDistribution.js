// Auto-generated. Do not edit!

// (in-package image_recognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CategoryProbability = require('./CategoryProbability.js');

//-----------------------------------------------------------

class CategoricalDistribution {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.probabilities = null;
      this.unknown_probability = null;
    }
    else {
      if (initObj.hasOwnProperty('probabilities')) {
        this.probabilities = initObj.probabilities
      }
      else {
        this.probabilities = [];
      }
      if (initObj.hasOwnProperty('unknown_probability')) {
        this.unknown_probability = initObj.unknown_probability
      }
      else {
        this.unknown_probability = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CategoricalDistribution
    // Serialize message field [probabilities]
    // Serialize the length for message field [probabilities]
    bufferOffset = _serializer.uint32(obj.probabilities.length, buffer, bufferOffset);
    obj.probabilities.forEach((val) => {
      bufferOffset = CategoryProbability.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_probability]
    bufferOffset = _serializer.float32(obj.unknown_probability, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CategoricalDistribution
    let len;
    let data = new CategoricalDistribution(null);
    // Deserialize message field [probabilities]
    // Deserialize array length for message field [probabilities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.probabilities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.probabilities[i] = CategoryProbability.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_probability]
    data.unknown_probability = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.probabilities.forEach((val) => {
      length += CategoryProbability.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_recognition_msgs/CategoricalDistribution';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33d3c52e53151a3b74f712a5f80b67be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Categorical distribution; if the probability of an element is below the unknown
    # probability, it can be classified as unknown
    CategoryProbability[] probabilities
    float32 unknown_probability
    
    ================================================================================
    MSG: image_recognition_msgs/CategoryProbability
    # A category (label) with its probability (probability) that ranges from 0..1
    string  label
    float32 probability
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CategoricalDistribution(null);
    if (msg.probabilities !== undefined) {
      resolved.probabilities = new Array(msg.probabilities.length);
      for (let i = 0; i < resolved.probabilities.length; ++i) {
        resolved.probabilities[i] = CategoryProbability.Resolve(msg.probabilities[i]);
      }
    }
    else {
      resolved.probabilities = []
    }

    if (msg.unknown_probability !== undefined) {
      resolved.unknown_probability = msg.unknown_probability;
    }
    else {
      resolved.unknown_probability = 0.0
    }

    return resolved;
    }
};

module.exports = CategoricalDistribution;
