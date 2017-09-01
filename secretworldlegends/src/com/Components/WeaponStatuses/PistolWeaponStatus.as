import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class com.Components.WeaponStatuses.PistolWeaponStatus extends UIComponent
{
	private var m_LeftBullets : MovieClip;
	private var m_RightBullets : MovieClip;
	private var m_GrayMatch : MovieClip;
	private var m_BlueMatch : MovieClip;
	private var m_RedMatch : MovieClip;
	private var m_Timer : TextField;
	private var m_Character : Character;
	private var m_IntervalId : Number;
	static private var COUNTER_BUFF_LEFT : Number;
	static private var COUNTER_BUFF_RIGHT : Number;
	static private var LOCKED_BUFF : Number;

	public function PistolWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function ClearLock();

	private function UpdateTimer();

}