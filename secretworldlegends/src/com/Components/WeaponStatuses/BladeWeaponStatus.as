import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.utils.Delegate;
import mx.transitions.easing.*;
intrinsic class com.Components.WeaponStatuses.BladeWeaponStatus extends UIComponent
{
	private var m_Hilt : MovieClip;
	private var m_ReadyGlow : MovieClip;
	private var m_HealAnim : MovieClip;
	private var m_Blade : MovieClip;
	private var m_Mask1 : MovieClip;
	private var m_Progress1 : MovieClip;
	private var m_Mask2 : MovieClip;
	private var m_Progress2 : MovieClip;
	private var m_Character : Character;
	private var m_MaxDuration : Number;
	private var m_CurrentCount : Number;
	private var m_CurrentlyActive : Boolean;
	private var m_PlaySound : Boolean;
	static private var ACTIVE_BUFF : Number;
	static private var COUNTER_BUFF : Number;
	static private var HEAL_BUFF : Number;
	static private var MAX_COUNT : Object;

	public function BladeWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function UpdateVisibleBuff(buffId:Number);

	private function SetActive(active:Boolean);

}