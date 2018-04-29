## *********************************************************
## 
## File autogenerated for the roboteq_control package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 293, 'description': 'Configuration closed loop', 'max': 6, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'closed_loop_velocity', 'edit_method': "{'enum_description': 'Type fo velocity control mode', 'enum': [{'srcline': 9, 'description': 'Closed loop speed (Sec. 9 pag. 113)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPIDtype.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'closed_loop_speed'}, {'srcline': 10, 'description': 'Closed loop speed position (Sec. 9 pag. 114)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPIDtype.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': 'closed_loop_speed_position'}]}", 'default': 6, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 293, 'description': 'Configuration closed loop', 'max': 4, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'closed_loop_position', 'edit_method': "{'enum_description': 'Type fo position control mode', 'enum': [{'srcline': 14, 'description': 'Closed loop position relative (Sec. 10 pag. 121)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPIDtype.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'closed_loop_position_relative'}, {'srcline': 15, 'description': 'Closed loop count position (Sec. 10 pag. 121)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPIDtype.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'closed_loop_count_position'}, {'srcline': 16, 'description': 'Closed loop position tracking (Sec. 10 pag. 122)', 'srcfile': '/home/nvidia/zuckbot_ws/src/roboteq_control/cfg/RoboteqPIDtype.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'closed_loop_position_tracking'}]}", 'default': 2, 'level': 0, 'min': 2, 'type': 'int'}, {'srcline': 293, 'description': 'Restore to the original configuration', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'restore_defaults', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}], 'type': '', 'id': 0}

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

RoboteqPIDtype_closed_loop_speed = 1
RoboteqPIDtype_closed_loop_speed_position = 6
RoboteqPIDtype_closed_loop_position_relative = 2
RoboteqPIDtype_closed_loop_count_position = 3
RoboteqPIDtype_closed_loop_position_tracking = 4