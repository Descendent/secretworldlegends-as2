import gfx.core.UIComponent;
import flash.geom.Point;
import mx.utils.Delegate;
import com.Utils.Signal;
intrinsic class GUI.SkillHiveSimple.Triangle extends UIComponent
{
	private var m_Base : MovieClip;
	private var m_Thumb : MovieClip;
	private var m_Pressed : Boolean;
	public var SignalValuesChanged : Signal;

	public function Triangle();

	private function configUI();

	private function OnPress();

	private function MouseMove();

	private function MouseUp();

	private function MoveThumbToMouse();

	public function SetPoint(pointX:Number, pointY:Number);

	public function SetPointByPercents(dPercent:Number, tPercent:Number, hPercent:Number);

	public function GetPoint();

	private function GetStatsFromPoint(point:Point) : Array;

	private function GetPointFromStats(dPercent:Number, tPercent:Number, hPercent:Number);

	private function vectorMultiply(scalar:Number, point:Point);

	private function dot(point1:Point, point2:Point);

	private function degreesToRadians(degrees:Number);

	private function radiansToDegrees(radians:Number);

}