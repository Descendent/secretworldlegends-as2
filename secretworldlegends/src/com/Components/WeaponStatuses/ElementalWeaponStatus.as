import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class com.Components.WeaponStatuses.ElementalWeaponStatus extends UIComponent
{
	private var m_Slider : MovieClip;
	private var m_Bar : MovieClip;
	private var m_OverheatTriAnim : MovieClip;
	private var m_Character : Character;
	private var m_CurrentCount : Number;
	private var m_FlashInterval : Number;
	private var m_CooldownTimeout : Number;
	private var m_Overheated : Boolean;
	static private var COUNTER_BUFF : Number;
	static private var OVERHEAT_BUFF : Number;
	static private var MAX_COUNT : Number;
	static private var WARNING_PERCENT : Number;

	public function ElementalWeaponStatus();

	private function configUI();

	private function onUnload();

	private function UpdateBuff(buffId:Number);

	private function AttachCooldown();

	private function FlashWarning();

}