﻿import com.Components.WindowComponentContent;
import com.GameInterface.GearManager;
import com.GameInterface.Game.Character;
import com.GameInterface.GearData;
import com.GameInterface.GearDataAbility;
import com.GameInterface.GearDataItem;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tooltip.*;
import com.Components.ItemComponent;
import com.Utils.Archive;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import GUI.SkillHiveSimple.DeckSlot;
import GUI.SkillHiveSimple.DeckManagerAbility;
intrinsic class GUI.SkillHiveSimple.DeckManager extends WindowComponentContent
{
	private var m_Passives : MovieClip;
	private var m_Actives : MovieClip;
	private var m_Equipment : MovieClip;
	private var m_NamePrompt : MovieClip;
	private var m_Header : TextField;
	private var m_SlotHeader : TextField;
	private var m_PreviewHeader : TextField;
	private var m_HelpHeader : TextField;
	private var m_HelpText : TextField;
	private var m_HelpTextSave : TextField;
	private var m_HelpTextLoad : TextField;
	private var m_PassivesText : TextField;
	private var m_ActivesText : TextField;
	private var m_TalismansText : TextField;
	private var m_WeaponsText : TextField;
	private var m_SaveAnim : MovieClip;
	private var m_Builds : Array;
	private var m_SelectedDeck : String;
	private var m_ValidatorText : String;
	static private var ACTIVE_SHORTCUTBAR_COUNT : Number;
	static private var ACTIVE_SHORTCUTBAR_FIRSTSLOT : Number;
	static private var PASSIVE_SHORTCUTBAR_COUNT : Number;
	static private var PASSIVE_SHORTCUTBAR_FIRSTSLOT : Number;

	public function DeckManager();

	private function configUI() : Void;

	private function SetLabels() : Void;

	private function SlotGearManagerDataUpdated() : Void;

	private function UpdateBuildList();

	private function PopulatePreview(deckName:String);

	private function PopulateGearSlot(itemSlot:MovieClip, inventoryItem:com.GameInterface.InventoryItem) : Void;

	private function ClearPreview();

	private function CreateNewDeck() : Void;

	private function ConfirmDeckCreation() : Void;

	private function CancelDeckCreation() : Void;

	private function VerifyBuildName() : Void;

	private function onKeyUp() : Void;

	private function DeckSlotSelected(deckName:String) : Void;

	private function DeckSlotDeleted(deckName:String) : Void;

	private function GetAvailableSlots() : Number;

	private function GetMaxSlots() : Number;

	private function SlotGearManagerError(errorCode:Number, message:String) : Void;

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

	private function onUnload();

}