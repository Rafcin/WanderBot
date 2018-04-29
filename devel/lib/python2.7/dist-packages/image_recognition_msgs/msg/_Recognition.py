# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from image_recognition_msgs/Recognition.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import image_recognition_msgs.msg
import sensor_msgs.msg

class Recognition(genpy.Message):
  _md5sum = "27e1989277b4d204ee94a720e6ebc927"
  _type = "image_recognition_msgs/Recognition"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# A recognition in an image region of interest (roi) that is described by a
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
"""
  __slots__ = ['categorical_distribution','roi','group_id']
  _slot_types = ['image_recognition_msgs/CategoricalDistribution','sensor_msgs/RegionOfInterest','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       categorical_distribution,roi,group_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Recognition, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.categorical_distribution is None:
        self.categorical_distribution = image_recognition_msgs.msg.CategoricalDistribution()
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      if self.group_id is None:
        self.group_id = 0
    else:
      self.categorical_distribution = image_recognition_msgs.msg.CategoricalDistribution()
      self.roi = sensor_msgs.msg.RegionOfInterest()
      self.group_id = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.categorical_distribution.probabilities)
      buff.write(_struct_I.pack(length))
      for val1 in self.categorical_distribution.probabilities:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_f().pack(val1.probability))
      _x = self
      buff.write(_get_struct_f4IBI().pack(_x.categorical_distribution.unknown_probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.group_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.categorical_distribution is None:
        self.categorical_distribution = image_recognition_msgs.msg.CategoricalDistribution()
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.categorical_distribution.probabilities = []
      for i in range(0, length):
        val1 = image_recognition_msgs.msg.CategoryProbability()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 4
        (val1.probability,) = _get_struct_f().unpack(str[start:end])
        self.categorical_distribution.probabilities.append(val1)
      _x = self
      start = end
      end += 25
      (_x.categorical_distribution.unknown_probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.group_id,) = _get_struct_f4IBI().unpack(str[start:end])
      self.roi.do_rectify = bool(self.roi.do_rectify)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.categorical_distribution.probabilities)
      buff.write(_struct_I.pack(length))
      for val1 in self.categorical_distribution.probabilities:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_f().pack(val1.probability))
      _x = self
      buff.write(_get_struct_f4IBI().pack(_x.categorical_distribution.unknown_probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.group_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.categorical_distribution is None:
        self.categorical_distribution = image_recognition_msgs.msg.CategoricalDistribution()
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.categorical_distribution.probabilities = []
      for i in range(0, length):
        val1 = image_recognition_msgs.msg.CategoryProbability()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 4
        (val1.probability,) = _get_struct_f().unpack(str[start:end])
        self.categorical_distribution.probabilities.append(val1)
      _x = self
      start = end
      end += 25
      (_x.categorical_distribution.unknown_probability, _x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.group_id,) = _get_struct_f4IBI().unpack(str[start:end])
      self.roi.do_rectify = bool(self.roi.do_rectify)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f4IBI = None
def _get_struct_f4IBI():
    global _struct_f4IBI
    if _struct_f4IBI is None:
        _struct_f4IBI = struct.Struct("<f4IBI")
    return _struct_f4IBI
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f