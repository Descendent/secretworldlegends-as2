import flash.filters.GlowFilter;
import GUI.HUD.AbilityBase;
import com.Utils.Colors;
import mx.utils.Delegate;
import GUI.HUD.AbilityCooldown;
import com.Utils.Signal;
import com.GameInterface.Log;
import mx.transitions.easing.*;
import gfx.motion.Tween;
intrinsic class GUI.HUD.ActiveAbility extends AbilityBase
{
	static public var FLAG_WRONG_HEAPON : Number;
	static public var FLAG_CASTING : Number;
	static public var FLAG_COOLDOWN : Number;
	private var m_Cooldown : AbilityCooldown;
	private var SignalDone : Signal;
	private var m_GlowFilter : GlowFilter;

	public function ActiveAbility();

	public function init();

	public function AddCooldown(cooldownStart:Number, cooldownEnd:Number, cooldownFlags:Number) : Void;

	public function HasCoolDown() : Boolean;

	public function GetCoolDown() : AbilityCooldown;

	public function RemoveCooldown(spellId:Number) : Void;

	private function CooldownFading();

	public function StartChanneling() : Void;

	public function StopChanneling() : Void;

	private function ChannelingHandler();

	public function SetDisabled();

	private function SetEnabled(enabled:Boolean) : Void;

	public function SetAvailable();

	private function SetRangeDisabled() : Void;

	private function SetMaxMomentum();

	private function SetResourceDisabled();

	private function UpdateVisuals();

	private function ForceUpdateVisuals();

}