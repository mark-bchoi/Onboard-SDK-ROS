# gimbal actuator will be performed when a waypoint mission is executed.
#constant for DJIWaypointV2ActionActuatorGimbalOperationType
# Rotates the gimbal. Only valid when the trigger type is
# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.
uint8 DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL = 1
# Unknown
uint8 DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN = 255

uint8 d_j_i_waypoint_v_2_action_actuator_gimbal_operation_type 
uint16 actuator_index # The index of actuator. It is valid when the diagnostics is related
# to camera or gimbal and the connected product has multiple gimbals and cameras.
WaypointV2GimbalActuatorRotationParam waypoint_v_2_gimbal_actuator_rotation_param # The operation type of gimbal actuator.