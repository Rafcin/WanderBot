// Generated by gencpp from file image_recognition_msgs/GetFaceProperties.msg
// DO NOT EDIT!


#ifndef IMAGE_RECOGNITION_MSGS_MESSAGE_GETFACEPROPERTIES_H
#define IMAGE_RECOGNITION_MSGS_MESSAGE_GETFACEPROPERTIES_H

#include <ros/service_traits.h>


#include <image_recognition_msgs/GetFacePropertiesRequest.h>
#include <image_recognition_msgs/GetFacePropertiesResponse.h>


namespace image_recognition_msgs
{

struct GetFaceProperties
{

typedef GetFacePropertiesRequest Request;
typedef GetFacePropertiesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetFaceProperties
} // namespace image_recognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::image_recognition_msgs::GetFaceProperties > {
  static const char* value()
  {
    return "dafbff820ead30e2dcba0dd56efd35dd";
  }

  static const char* value(const ::image_recognition_msgs::GetFaceProperties&) { return value(); }
};

template<>
struct DataType< ::image_recognition_msgs::GetFaceProperties > {
  static const char* value()
  {
    return "image_recognition_msgs/GetFaceProperties";
  }

  static const char* value(const ::image_recognition_msgs::GetFaceProperties&) { return value(); }
};


// service_traits::MD5Sum< ::image_recognition_msgs::GetFacePropertiesRequest> should match 
// service_traits::MD5Sum< ::image_recognition_msgs::GetFaceProperties > 
template<>
struct MD5Sum< ::image_recognition_msgs::GetFacePropertiesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::image_recognition_msgs::GetFaceProperties >::value();
  }
  static const char* value(const ::image_recognition_msgs::GetFacePropertiesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::image_recognition_msgs::GetFacePropertiesRequest> should match 
// service_traits::DataType< ::image_recognition_msgs::GetFaceProperties > 
template<>
struct DataType< ::image_recognition_msgs::GetFacePropertiesRequest>
{
  static const char* value()
  {
    return DataType< ::image_recognition_msgs::GetFaceProperties >::value();
  }
  static const char* value(const ::image_recognition_msgs::GetFacePropertiesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::image_recognition_msgs::GetFacePropertiesResponse> should match 
// service_traits::MD5Sum< ::image_recognition_msgs::GetFaceProperties > 
template<>
struct MD5Sum< ::image_recognition_msgs::GetFacePropertiesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::image_recognition_msgs::GetFaceProperties >::value();
  }
  static const char* value(const ::image_recognition_msgs::GetFacePropertiesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::image_recognition_msgs::GetFacePropertiesResponse> should match 
// service_traits::DataType< ::image_recognition_msgs::GetFaceProperties > 
template<>
struct DataType< ::image_recognition_msgs::GetFacePropertiesResponse>
{
  static const char* value()
  {
    return DataType< ::image_recognition_msgs::GetFaceProperties >::value();
  }
  static const char* value(const ::image_recognition_msgs::GetFacePropertiesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IMAGE_RECOGNITION_MSGS_MESSAGE_GETFACEPROPERTIES_H