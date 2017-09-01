import com.GameInterface.Waypoint;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.Utils.Colors;
intrinsic class GUI.Waypoints.CustomWaypoint extends GUI.Waypoints.ScreenWaypoint
{
	public var m_Background : MovieClip;

	public function CustomWaypoint();

	public function WriteText() : Void;

	public function UpdateColor();

	public function SetColor(color:Number);

	public function GetHeight();

	public function GetWidth();

	public function Update(screenWidth:Number);

	public function SetDirection(direction:String);

}