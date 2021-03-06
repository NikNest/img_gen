# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from image_generator/Detection.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Detection(genpy.Message):
  _md5sum = "81bf65ed206cd9d9e7ff61e00901db1f"
  _type = "image_generator/Detection"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Center of segmentation
float32 cx
float32 cy

# Bounding box corners
float32 x1
float32 x2
float32 y1
float32 y2

# The classification confidences (probabilities)
float32[] scores

# Enum for the obstacle classification result
int16   ClassUnclassified = 0 
int16   ClassUnknownSmall = 1
int16   ClassUnknownBig = 2
int16   ClassPedestrian = 3 
int16   ClassMotorbike = 4
int16   ClassCar = 5
int16   ClassTruck = 6
int16   ClassStructure_Pylon = 7
int16   ClassStructure_Beacon = 8
int16   ClassStructure_GuardRail = 9
int16   ClassStructure_ConcreteBarrier = 10
int16   ClassUnknown = 15
int16   ClassBus = 16
int16   ClassBicycle = 17
int16   ClassTrafficLight = 18
int16   ClassTrain = 19

# The obstacle classification with the highest probability.
#
int16   classification"""
  # Pseudo-constants
  ClassUnclassified = 0
  ClassUnknownSmall = 1
  ClassUnknownBig = 2
  ClassPedestrian = 3
  ClassMotorbike = 4
  ClassCar = 5
  ClassTruck = 6
  ClassStructure_Pylon = 7
  ClassStructure_Beacon = 8
  ClassStructure_GuardRail = 9
  ClassStructure_ConcreteBarrier = 10
  ClassUnknown = 15
  ClassBus = 16
  ClassBicycle = 17
  ClassTrafficLight = 18
  ClassTrain = 19

  __slots__ = ['cx','cy','x1','x2','y1','y2','scores','classification']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32[]','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cx,cy,x1,x2,y1,y2,scores,classification

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Detection, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cx is None:
        self.cx = 0.
      if self.cy is None:
        self.cy = 0.
      if self.x1 is None:
        self.x1 = 0.
      if self.x2 is None:
        self.x2 = 0.
      if self.y1 is None:
        self.y1 = 0.
      if self.y2 is None:
        self.y2 = 0.
      if self.scores is None:
        self.scores = []
      if self.classification is None:
        self.classification = 0
    else:
      self.cx = 0.
      self.cy = 0.
      self.x1 = 0.
      self.x2 = 0.
      self.y1 = 0.
      self.y2 = 0.
      self.scores = []
      self.classification = 0

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
      _x = self
      buff.write(_get_struct_6f().pack(_x.cx, _x.cy, _x.x1, _x.x2, _x.y1, _x.y2))
      length = len(self.scores)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.scores))
      _x = self.classification
      buff.write(_get_struct_h().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.cx, _x.cy, _x.x1, _x.x2, _x.y1, _x.y2,) = _get_struct_6f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.scores = s.unpack(str[start:end])
      start = end
      end += 2
      (self.classification,) = _get_struct_h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.cx, _x.cy, _x.x1, _x.x2, _x.y1, _x.y2))
      length = len(self.scores)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.scores.tostring())
      _x = self.classification
      buff.write(_get_struct_h().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.cx, _x.cy, _x.x1, _x.x2, _x.y1, _x.y2,) = _get_struct_6f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.scores = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 2
      (self.classification,) = _get_struct_h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
_struct_h = None
def _get_struct_h():
    global _struct_h
    if _struct_h is None:
        _struct_h = struct.Struct("<h")
    return _struct_h
