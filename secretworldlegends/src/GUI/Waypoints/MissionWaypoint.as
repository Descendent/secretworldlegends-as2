import com.GameInterface.Waypoint;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.Utils.Colors;
intrinsic class GUI.Waypoints.MissionWaypoint extends GUI.Waypoints.ScreenWaypoint
{
	public var m_AreaWaypoint : Boolean;

	public function MissionWaypoint();

	public function WriteText() : Void;

	public function UpdateColor();

	public function SetColor(color:Number);

	public function Update(screenWidth:Number);

	public function SetDirection(direction:String);

}