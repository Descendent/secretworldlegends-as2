import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class com.Components.WeaponStatuses.BloodWeaponStatus extends UIComponent
{
	private var m_Slider : MovieClip;
	private var m_Bar : MovieClip;
	private var m_NegativePing1 : MovieClip;
	private var m_NegativePing2 : MovieClip;
	private var m_NegativePing3 : MovieClip;
	private var m_PositivePing1 : MovieClip;
	private var m_PositivePing2 : MovieClip;
	private var m_PositivePing3 : MovieClip;
	private var m_Character : Character;
	private var m_CurrentCount : Number;
	private var m_LastPercent : Number;
	private var m_CurrentDirection : Number;
	private var m_PlaySound : Boolean;
	static private var POSITIVE_COUNTER_BUFF : Number;
	static private var NEGATIVE_COUNTER_BUFF : Number;
	static private var POSITIVE : Number;
	static private var NEUTRAL : Number;
	static private var NEGATIVE : Number;
	static private var MAX_COUNT : Object;
	static private var LEFT_COLOR : Object;
	static private var RIGHT_COLOR : Object;

	public function BloodWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function UpdatePings(decimalPercent:Number);

}