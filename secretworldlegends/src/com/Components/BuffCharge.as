import gfx.motion.Tween;
import mx.transitions.easing.*;
import flash.geom.ColorTransform;
import flash.geom.Transform;
intrinsic class com.Components.BuffCharge extends MovieClip
{
	public var m_Charge : Number;
	public var m_Max : Number;
	public var m_Over : Boolean;
	public var i_Offset : MovieClip;

	public function BuffCharge();

	public function SetColor(color);

	public function SetMax(max);

	public function SetCharge(charge);

	public function SetText(charge, max);

	public function onRollOver();

	public function onRollOut();

}