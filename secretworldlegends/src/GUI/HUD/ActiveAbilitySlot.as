import com.GameInterface.Game.Shortcut;
import GUI.HUD.AbilitySlot;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import GUI.HUD.AbilityBase;
import GUI.HUD.ActiveAbility;
import GUI.HUD.AbilityCooldown;
import com.GameInterface.Log;
import mx.utils.Delegate;
import gfx.motion.Tween;
intrinsic class GUI.HUD.ActiveAbilitySlot extends GUI.HUD.AbilitySlot
{
	static public var s_HighestSlotDepth : Number;
	private var m_State : Number;
	private var m_SlotSize : Number;
	private var m_Ability : ActiveAbility;
	private var m_Reflection : ActiveAbility;
	private var m_QueueAnimation : MovieClip;
	private var m_IsChanneling : Boolean;
	private var m_CanUse : Boolean;

	public function ActiveAbilitySlot(p_mc:MovieClip, p_id:Number);

	private function OnMouseUp() : Void;

	public function SetCanUse(canUse:Boolean);

	private function AddEffects(iconPath:String);

	private function RemoveEffects() : Void;

	public function SwapEffect(duration:Number) : Void;

	public function SwapBackTimerEffect(swapBackTime:Number) : Void;

	private function CleanupAfterAnimation();

	private function SwapBackEffect(duration:Number) : Void;

	private function VerticalFlipBackEffect(duration:Number, position:Number, height:Number, scale:Number, clip:MovieClip) : Void;

	private function VerticalFlipEffect(duration:Number, position:Number, height:Number, scale:Number, clip:MovieClip) : Void;

	public function Fire() : Void;

	public function AddToQueue();

	public function RemoveFromQueue();

	public function Use() : Void;

	public function UpdateAbilityFlags(enabled:Boolean, flag:Number);

	public function StartChanneling() : Void;

	public function StopChanneling() : Void;

	public function AddCooldown(cooldownStart:Number, cooldownEnd:Number, cooldownType:Number) : Void;

	public function RemoveCooldown();

	public function SetVisible(val:Boolean) : Void;

	private function RemoveIcon() : Void;

	public function GetTooltipData() : TooltipData;

	public function SlotItemDroppedOnDesktop();

	public function IsChanneling() : Boolean;

}