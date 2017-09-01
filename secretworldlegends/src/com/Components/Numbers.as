import gfx.motion.Tween;
import mx.transitions.easing.*;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.Utils.Colors;
intrinsic class com.Components.Numbers extends MovieClip
{
	public var m_Charge : Number;
	public var m_Max : Number;
	public var m_Over : Boolean;
	public var m_Offset : MovieClip;
	public var UseSingleDigits : Boolean;

	public function Numbers();

	public function SetColor(color);

	public function SetFormat(format:TextFormat);

	public function SetMax(max);

	public function SetCharge(charge);

	public function SetText(charge, max);

	public function onRollOver();

	public function onRollOut();

}