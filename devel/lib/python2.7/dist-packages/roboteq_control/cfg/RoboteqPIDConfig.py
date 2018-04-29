## *********************************************************
## 
## File autogenerated for the roboteq_control package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 293, 'description': '[RPM] Default speed at which move the motor moves in position mode', 'max': 30000, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'position_mode_velocity', 'edit_method': '', 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 293, 'description': 'When the encoder are used is automatically computed', 'max': 1000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'turn_min_to_max', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 293, 'description': 'Kp gain PID', 'max': 25.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'Kp', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 293, 'description': 'Ki gain PID', 'max': 25.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'Ki', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 293, 'description': 'Kd gain PID', 'max': 25.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'Kd', 'edit_method': '', 'default': 0.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 293, 'description': '[#] Integrator limit', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'integrator_limit', 'edit_method': '', 'default': 100, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 293, 'description': 'Loop error detection', 'max': 3, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'loop_error_detection', 'edit_method': "{'enum_description': 'loop error detection', 'enum': [{'srcline': 16, 'description': 'Detection disabled', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'detection_disabled'}, {'srcline': 17, 'description': '250ms at error > 100', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': '250ms_at_error_up_100'}, {'srcline': 18, 'description': '500ms at error > 250', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': '500ms_at_error_up_250'}, {'srcline': 19, 'description': '1000ms at error > 500', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPID.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': '1000ms_at_error_up_500'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 293, 'description': 'Load all parameters from Roboteq board', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'load_roboteq', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 293, 'description': 'Restore to the original configuration', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'restore_defaults', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

RoboteqPID_detection_disabled = 0
RoboteqPID_250ms_at_error_up_100 = 1
RoboteqPID_500ms_at_error_up_250 = 2
RoboteqPID_1000ms_at_error_up_500 = 3