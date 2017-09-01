import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import gfx.core.UIComponent;
import mx.utils.Delegate;
import com.Utils.Colors;
intrinsic class com.Components.WeaponStatuses.AssaultRifleWeaponStatus extends UIComponent
{
	private var m_GrenadeLoader : MovieClip;
	private var m_Alert : MovieClip;
	private var m_Timer : TextField;
	private var m_Character : Character;
	private var m_IntervalId : Number;
	private var m_Stage : Number;
	private var m_PlaySound : Boolean;
	static private var ACTIVE_BUFF : Number;
	static private var COOKED_BUFF : Number;
	static private var STAGE_SAFE : Number;
	static private var STAGE_ARMED : Number;
	static private var STAGE_COOKED : Number;
	static private var ACTIVE_ALPHA : Number;
	static private var INACTIVE_ALPHA : Number;
	static private var ACTIVE_TINT : Number;
	static private var INACTIVE_TINT : Number;

	public function AssaultRifleWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function UpdateTimer();

}