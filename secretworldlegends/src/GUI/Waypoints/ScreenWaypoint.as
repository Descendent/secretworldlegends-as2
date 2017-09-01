import com.GameInterface.Waypoint;
intrinsic class GUI.Waypoints.ScreenWaypoint extends MovieClip
{
	public var m_WaypointText : String;
	public var m_WaypointName : String;
	public var m_Direction : String;
	public var m_Enabled : Boolean;
	public var m_IsArea : Boolean;
	public var m_Waypoint : Waypoint;
	static public var DIRECTION_NONE : String;
	static public var DIRECTION_RIGHT : String;
	static public var DIRECTION_LEFT : String;
	static public var DIRECTION_CENTER : String;
	public var tf : TextFormat;

	public function ScreenWaypoint();

	public function SetDirection(p_direction:String);

	public function Enable(enabled:Boolean);

	public function SetText(p_text:String) : Void;

	public function GetHeight();

	public function GetWidth();

	public function SetName(name:String) : Void;

	public function WriteText() : Void;

	public function Update(screenWidth:Number);

	public function UpdateColor();

	public function SetColor(color:Number);

	public function SetWaypoint(waypoint:Waypoint);

}