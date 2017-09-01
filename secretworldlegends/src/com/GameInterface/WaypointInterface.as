import com.Utils.Signal;
intrinsic class com.GameInterface.WaypointInterface
{
	static public var SignalPlayfieldChanged : Signal;
	public var SignalWaypointAdded : Signal;
	public var SignalWaypointRemoved : Signal;
	public var SignalWaypointMoved : Signal;
	public var SignalWaypointStateChanged : Signal;
	public var SignalWaypointColorChanged : Signal;
	public var SignalWaypointRenamed : Signal;
	public var m_Waypoints : Object;

	public function GetExistingWaypoints(pfID:Number);

	static public function MoveMinimap(topOffset:Number, rightOffset:Number);

	static public function ForceShowMinimap(showMap:Boolean);

}