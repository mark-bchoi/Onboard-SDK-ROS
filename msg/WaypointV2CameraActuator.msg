# This determines how the camera will be performed when a waypoint mission is executing.
#constant for DJIWaypointV2ActionActuatorCameraOperationType
# Starts to shoot a photo.
uint16 DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO = 1
# Starts to record a video.
uint16 DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO = 2
# Stops to record a video.
uint16 DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO = 3
# Starts focus.
uint16 DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS = 4
# Starts focal lenth. Only support those support flocal lenth cameras.
uint16 DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH = 5

uint16 actuator_index # The index of actuator. It is valid when the diagnostics is related
# to camera or gimbal and the connected product has multiple gimbals and cameras.

uint16 d_j_i_waypoint_v_2_action_actuator_camera_operation_type 
# you can only choose one to config.
WaypointV2CameraActuatorFocusParam focus_param # The parameters for camera focus operation. It is valid only when
# ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is
# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``
WaypointV2CameraActuatorFocalLengthParam zoom_param # The parameters for camera focus length operation. It is valid only when
# ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is
# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``