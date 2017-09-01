import com.GameInterface.Tooltip.*;
import com.GameInterface.Game.Character;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Utils;
import com.Utils.ID32;
import mx.utils.Delegate;
import gfx.motion.Tween;
import mx.transitions.easing.*;
intrinsic class com.Components.AnimaPotion extends MovieClip
{
	private var m_PotionHitArea : MovieClip;
	private var m_Content : MovieClip;
	private var m_Gloss : MovieClip;
	private var m_GlossMask : MovieClip;
	private var m_CooldownLine : MovieClip;
	private var m_CooldownMask : MovieClip;
	private var m_BGMask : MovieClip;
	private var m_UseBG : MovieClip;
	private var m_NoUseBG : MovieClip;
	private var m_HotkeyText : TextField;
	private var m_CooldownTimer : MovieClip;
	private var m_Remaining : MovieClip;
	private var m_BuyButton : MovieClip;
	private var m_Character : Character;
	private var m_CooldownIntervalID : Number;
	private var m_TotalCooldownDuration : Number;
	private var m_CooldownExpireTime : Number;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	private var m_MaxPotions : Number;
	private var POTION_SPELL : Number;

	public function AnimaPotion();

	public function SetCharacter(character:Character);

	private function UpdateCount();

	private function SlotStatChanged(stat:Number);

	private function SlotPotionCooldown(seconds:Number);

	private function SlotEndPotionCooldown();

	private function SetCooldown(cooldownEnd:Number, cooldownStart:Number);

	private function RemoveCooldown();

	private function UpdateTimer() : Void;

	private function SlotHotkeyChanged();

	private function UsePotion();

	private function BuyRefill();

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	private function onUnload();

}