import mx.utils.Delegate;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.Log;
import com.Utils.Signal;
import com.Utils.Colors;
intrinsic class GUI.HUD.AbilityCooldown
{
	private var m_IntervalID : Number;
	private var m_Increments : Number;
	private var m_MaskHeight : Number;
	private var m_MaskY : Number;
	private var m_Mask : MovieClip;
	private var m_CooldownFlags : Number;
	private var m_CooldownTimer : MovieClip;
	private var m_IsPrepared : Boolean;
	private var m_UseTimer : Boolean;
	private var m_TotalDuration : Number;
	private var m_StartTime : Number;
	private var m_EndTime : Number;
	private var m_SpellId : Number;
	public var SignalDone : Signal;
	private var m_Icon : MovieClip;

	public function AbilityCooldown(icon:MovieClip, cooldownStart:Number, cooldownEnd:Number, cooldownFlags:Number, spellId:Number);

	private function PrepareStage(cooldownStart:Number, cooldownEnd:Number);

	private function UpdateTimer() : Void;

	private function ClearMask();

	private function ApplyMask();

	public function OverwriteCooldown(cooldownStart:Number, cooldownEnd:Number, cooldownFlags:Number);

	private function EmitSignal();

	public function RemoveCooldown();

	public function GetCooldownFlags() : Number;

}