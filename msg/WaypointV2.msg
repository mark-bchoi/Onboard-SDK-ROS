# The struct represents a target point in the waypoint mission. For a waypoint

#constant for flightpathMode
uint8 DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE = 0 #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.
uint8 DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.
uint8 DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP = 2 #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.
uint8 DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN = 3 #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.
#the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is
#set in ``DJIWaypointV2``.
uint8 DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE = 4 # In the mission, the aircraft will go to the first waypoint along a straight line.
# This is only valid for the first waypoint.
uint8 DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT = 5 # Straight exit the Last waypoint, Only valid for last waypoint.
uint8 DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN = 255 # Unknown

#constant for headMode
uint8 DJIWAYPOINTV2HEADINGMODEAUTO = 0 # Aircraft's heading will always be in the direction of flight.
uint8 DJIWAYPOINTV2HEADINGFIXED = 1 # Aircraft's heading will be set to the heading when reaching the first waypoint.
# Before reaching the first waypoint, the aircraft's heading can be controlled by
# the remote controller. When the aircraft reaches the first waypoint, its
# heading will be fixed.
uint8 DJIWAYPOINTV2HEADINGMANUAL = 2 # The aircraft's heading in the mission can be controlled by the remote controller.
uint8 DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM = 3 # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.
# See ``DJIWaypointV2_heading`` to preset the heading.
uint8 DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST = 4 # Aircraft's heading will always toward point of interest.
# using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``
# setting point of interset altitute.
uint8 DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW = 5 # The aircraft's heading rotate simultaneously with its gimbal's yaw.
uint8 DJIWAYPOINTV2HEADINGUNKNOWN = 255 # Unknown.

#constant for turnMode
uint8 DJIWAYPOINTV2TURNMODECLOCKWISE = 0 # The aircraft's heading rotates clockwise.
uint8 DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE = 1 # The aircraft's heading rotates counterclockwise.
uint8 DJIWAYPOINTV2TURNMODEUNKNOWN = 255 # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.



#  mission, a flight route  consists of multiple `WaypointV2` objects.
float64 longitude # waypoint position relative to WayPointV2InitSettings's reference point.unit: m
float64 latitude 
float32 relative_height # relative to takeoff height
uint8 waypoint_type # Waypoint flight path mode
uint8 heading_mode # Represents current aircraft's heading mode on current waypoint.
WaypointV2Config config # Represents current waypoint's speed config.
uint16 damping_distance 
float32 heading # The heading to which the aircraft will rotate by the time it reaches the
# waypoint. The aircraft heading  will gradually change between two waypoints with
# different headings if the waypoint  mission's `headingMode` is set  to
# 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of
# [-180, 180] degrees, where 0 represents True North.
uint8 turn_mode # Determines whether the aircraft will turn clockwise or anticlockwise when
# changing its heading.
# Property is used when ``DJIWaypointV2_headingMode`` is
# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.
# Aircraft will always be heading to point while executing mission. Default is
# "kCLLocationCoordinate2DInvalid".
float32 position_x # X distance to reference point, North is positive
float32 position_y # Y distance to reference point, East is positive
float32 position_z # Z distance to reference point, UP is positive

# While the aircraft is travelling between waypoints, you can offset its speed by
# using the throttle joystick on the remote controller. "maxFlightSpeed" is this
# offset when the joystick is pushed to maximum deflection. For example, If
# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will
# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from
# the aircraft speed. If the remote controller stick is not at maximum deflection,
# then the offset speed will be interpolated between "[0, maxFlightSpeed]"" with a
# resolution of 1000 steps. If the offset speed is negative, then the aircraft
# will fly backwards to previous waypoints. When it reaches the first waypoint, it
# will then hover in place until a positive speed is applied. "maxFlightSpeed" has
# a range of [2,15] m/s.
float32 max_flight_speed 

# The base automatic speed of the aircraft as it moves between waypoints with
# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base
# automatic speed, and the speed control given by the throttle joystick on the
# remote controller. If "autoFlightSpeed >0": Actual speed is "autoFlightSpeed" +
# Joystick Speed (with combined max of "maxFlightSpeed") If "autoFlightSpeed =0":
# Actual speed is controlled only by the remote controller joystick. If
# autoFlightSpeed <0" and the aircraft is at the first waypoint, the aircraft
# will hover in place until the speed is made positive by the remote controller
# joystick. In flight controller firmware 3.2.10.0 or above, different speeds
# between individual waypoints can also be set in waypoint objects which will
# overwrite "autoFlightSpeed".
float32 auto_flight_speed 