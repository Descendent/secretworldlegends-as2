import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.utils.Delegate;
import mx.transitions.easing.*;
intrinsic class com.Components.WeaponStatuses.FistWeaponStatus extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_Inactive : MovieClip;
	private var m_DPS : MovieClip;
	private var m_Heal : MovieClip;
	private var m_ActiveMask : MovieClip;
	private var m_InactiveMask : MovieClip;
	private var m_HealBar : MovieClip;
	private var m_DPSBar : MovieClip;
	private var m_InactiveBar : MovieClip;
	private var m_ReadyAnim : MovieClip;
	private var m_Character : Character;
	private var m_State : Number;
	private var m_Ready : Boolean;
	private var m_Full : Boolean;
	private var m_PlaySound : Boolean;
	static private var COUNTER_BUFF : Number;
	static private var HEAL_BUFF : Number;
	static private var DPS_BUFF : Number;
	static private var STATE_INACTIVE : Number;
	static private var STATE_HEAL : Number;
	static private var STATE_DPS : Number;
	static private var MAX_WIDTH : Number;
	static private var STATIC_FRAME : Number;
	static private var ACTIVATE_FRAME : Number;
	static private var DEACTIVATE_FRAME : Number;
	static private var TWEEN_TIME : Number;

	public function FistWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function HealPending();

	private function DPSPending();

	private function InactivePending();

	private function HideBars();

	private function SetInactive();

	private function SetHeal();

	private function SetDPS();

}