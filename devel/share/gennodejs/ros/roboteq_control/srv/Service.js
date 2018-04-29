// Auto-generated. Do not edit!

// (in-package roboteq_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceRequest
    // Serialize message field [service]
    bufferOffset = _serializer.string(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceRequest
    let len;
    let data = new ServiceRequest(null);
    // Deserialize message field [service]
    data.service = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.service.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboteq_control/ServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cbcfa13b08f6d36710b9af8741e6112';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string service
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceRequest(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = ''
    }

    return resolved;
    }
};

class ServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.information = null;
    }
    else {
      if (initObj.hasOwnProperty('information')) {
        this.information = initObj.information
      }
      else {
        this.information = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceResponse
    // Serialize message field [information]
    bufferOffset = _serializer.string(obj.information, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceResponse
    let len;
    let data = new ServiceResponse(null);
    // Deserialize message field [information]
    data.information = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.information.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboteq_control/ServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f643f4492d5df4a7264b4dfdbe3626f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string information
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceResponse(null);
    if (msg.information !== undefined) {
      resolved.information = msg.information;
    }
    else {
      resolved.information = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceRequest,
  Response: ServiceResponse,
  md5sum() { return 'e6679107a9158ba5cdd48d614a8c1546'; },
  datatype() { return 'roboteq_control/Service'; }
};
