import gfx.core.UIComponent;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
import com.GameInterface.AgentSystem;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.SpellBase;
import com.GameInterface.SpellData;
import com.GameInterface.DistributedValue;
import com.GameInterface.LoreBase;
import com.Utils.LDBFormat;
intrinsic class GUI.AgentSystem.EquippedAbility extends UIComponent
{
	private var m_Name : TextField;
	private var m_TooltipArea : MovieClip;
	private var m_UnequipButton : Button;
	private var m_SlotText : TextField;
	private var m_Agent : TextField;
	private var m_Lock : MovieClip;
	private var m_Index : Number;
	private var m_SpellData : SpellData;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	static private var UNLOCK_SUPPORT_ABILITIES : Number;
	static private var UNLOCK_ABILITY_SLOT_2 : Number;
	static private var UNLOCK_ABILITY_SLOT_3 : Number;

	public function EquippedAbility();

	private function configUI();

	public function InitializeAbilitySlot(index:Number);

	private function UpdateDisplay();

	private function UpdateLockStatus();

	private function SlotTagAdded(tagId:Number);

	private function SlotPassiveChanged(slotId:Number);

	private function UnequipAbility();

	private function RemoveFocus();

	private function StartTooltipTimeout();

	private function StopTooltipTimeout();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	private function onUnload();

}