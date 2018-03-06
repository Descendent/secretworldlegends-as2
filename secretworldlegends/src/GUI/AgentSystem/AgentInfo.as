import gfx.core.UIComponent;
import gfx.controls.Button;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystem;
import com.GameInterface.Tooltip.*;
import com.GameInterface.SpellBase;
import com.GameInterface.SpellData;
import com.GameInterface.Game.BuffData;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.LoreBase;
import com.GameInterface.Game.Character;
import com.Components.ItemSlot;
import GUI.AgentSystem.RosterIcon;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.Utils.DragObject;
import com.Utils.Colors;
import com.Utils.ID32;
import mx.utils.Delegate;
intrinsic class GUI.AgentSystem.AgentInfo extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_EquipButton0 : MovieClip;
	private var m_EquipButton1 : MovieClip;
	private var m_EquipButton2 : MovieClip;
	private var m_ConfirmButton : Button;
	private var m_Background : MovieClip;
	private var m_AgentIcon : RosterIcon;
	private var m_Name : TextField;
	private var m_Description : TextField;
	private var m_Level : TextField;
	private var m_FluffHeader : TextField;
	private var m_Gender : MovieClip;
	private var m_Profession : MovieClip;
	private var m_Species : MovieClip;
	private var m_Age : MovieClip;
	private var m_TraitTooltip1 : MovieClip;
	private var m_TraitTooltip2 : MovieClip;
	private var m_EquipmentTraitTooltip : MovieClip;
	private var m_Trait1Category : TextField;
	private var m_Trait1 : TextField;
	private var m_TraitIcon1 : MovieClip;
	private var m_Trait2Category : TextField;
	private var m_Trait2 : TextField;
	private var m_TraitIcon2 : MovieClip;
	private var m_EquipmentTraitCategory : TextField;
	private var m_EquipmentTrait : TextField;
	private var m_EquipmentTraitIcon : MovieClip;
	private var m_EquipmentTraitBG : MovieClip;
	private var m_StatsHeader : TextField;
	private var m_Stat1 : MovieClip;
	private var m_Stat2 : MovieClip;
	private var m_Stat3 : MovieClip;
	private var m_PassiveHeader : TextField;
	private var m_PassiveName : TextField;
	private var m_PassiveDescription : TextField;
	private var m_EquipmentHeader : TextField;
	private var m_EquipmentBG : MovieClip;
	private var m_Passive25 : MovieClip;
	private var m_Passive50 : MovieClip;
	private var m_Timer : TextField;
	private var m_XPBar : MovieClip;
	private var m_PassiveHelp : MovieClip;
	private var m_Lock1 : MovieClip;
	private var m_Lock2 : MovieClip;
	private var m_Lock3 : MovieClip;
	private var m_AgentData : AgentSystemAgent;
	private var m_OverrideData : Array;
	private var m_Equipment : MovieClip;
	private var m_EquipSlot : ItemSlot;
	private var m_TotalTime : Number;
	private var m_TimeInterval : Number;
	private var m_CompareMission : Number;
	static private var MAX_PASSIVES : Number;
	static private var UNLOCK_SUPPORT_ABILITIES : Number;
	static private var UNLOCK_ABILITY_SLOT_2 : Number;
	static private var UNLOCK_ABILITY_SLOT_3 : Number;
	public var SignalClose : Signal;
	public var SignalAssignAgent : Signal;

	public function AgentInfo();

	private function configUI();

	private function SetLabels() : Void;

	public function SetData(agentData:AgentSystemAgent);

	public function SetCompareMission(missionId:Number);

	private function UpdateSuccessChance();

	private function SlotAgentStatusUpdated(agentData:AgentSystemAgent);

	private function UpdateTraits();

	private function UpdateStats();

	private function UpdateLevel();

	private function UpdateEquipment();

	private function InitializeEquipmentSlot();

	private function SlotMouseUpEmptySlot(itemSlot:ItemSlot, buttonIndex:Number) : Void;

	private function SlotMouseUpItem(itemSlot:ItemSlot, buttonIndex:Number) : Void;

	private function onDragEnd(event:Object) : Void;

	private function onDragBegin(item:ItemSlot, stackSize:Number) : Void;

	private function SlotItemDroppedOnDesktop() : Void;

	private function SlotDragHandled();

	private function UpdatePassive();

	private function UpdateEquippedPassives();

	private function SlotTagAdded(tagId:Number);

	private function SlotPassiveChanged();

	public function GetAgentData();

	private function UpdateConfirmButton();

	private function EquipSlot1();

	private function EquipSlot2();

	private function EquipSlot3();

	private function Confirm();

	private function CloseButton();

	private function CloseInfo();

	private function RemoveFocus();

	private function UpdateTimer();

	private function ClearTimer();

	private function ClearTimeInterval();

	private function CalculateTimeString(totalSeconds) : String;

	private function onUnload() : Void;

}