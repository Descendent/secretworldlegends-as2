import com.Components.WindowComponentContent;
import GUI.SkillHive.SkillhiveEquipPopup;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import com.Utils.Colors;
import com.Utils.Text;
import com.GameInterface.CharacterCreation.CharacterCreation;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.Utils;
import com.GameInterface.Spell;
import com.GameInterface.ProjectSpell;
import com.GameInterface.SpellData;
import com.GameInterface.ShopInterface;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.SkillWheel.SkillWheel;
import com.GameInterface.SkillWheel.SkillTemplate;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.Shortcut;
import com.GameInterface.Lore;
import com.GameInterface.LoreBase;
import com.GameInterface.DistributedValue;
import gfx.controls.Button;
import gfx.controls.ButtonGroup;
import mx.utils.Delegate;
intrinsic class GUI.SkillHiveSimple.AbilityPageBase extends WindowComponentContent
{
	private var m_Header : MovieClip;
	private var m_Footer : MovieClip;
	private var m_TutorialBlocker : MovieClip;
	private var m_HelpButton : Button;
	private var m_VideoButton : Button;
	private var m_DetailButton : Button;
	private var m_DetailNoSelected : TextField;
	private var m_UnlockButton : Button;
	private var m_AurumUnlockButton : MovieClip;
	private var m_UnlockBG : MovieClip;
	private var m_Character : Character;
	private var m_TabGroup : ButtonGroup;
	private var m_TabArray : Array;
	private var m_ActiveDialog : MovieClip;
	private var m_CurrentEquipPopupHolder : MovieClip;
	private var m_CurrentEquipPopupMenu : MovieClip;
	private var m_PurchaseBlocker : MovieClip;
	private var m_HelpDisplay : MovieClip;
	private var m_SelectedFeat : FeatData;
	private var m_CurrentCluster : Number;
	private var m_CurrentClusterOffset : Number;
	private var m_SetupHelpInterval : Number;
	private var m_LanguageMonitor : DistributedValue;
	private var m_FocusedFeat : FeatData;
	private var m_TDB_ConfirmUnlockPage : String;
	static private var BLADE_DATA : Object;
	static private var HAMMER_DATA : Object;
	static private var FIST_DATA : Object;
	static private var BLOOD_DATA : Object;
	static private var CHAOS_DATA : Object;
	static private var ELEMENTAL_DATA : Object;
	static private var SHOTGUN_DATA : Object;
	static private var PISTOL_DATA : Object;
	static private var RIFLE_DATA : Object;
	static private var LAUNCHER_DATA : Object;
	static private var CHAINSAW_DATA : Object;
	static private var QUANTUM_DATA : Object;
	static private var WHIP_DATA : Object;
	static private var FLAMETHROWER_DATA : Object;
	static private var AUX_ACTIVE_SLOT : Number;
	static private var TUTORIAL_COMPLETE_TAG : Number;
	static private var PASSIVES_UNLOCKED_TAG : Number;
	static private var PASSIVES_TUTORIAL_COMPLETE_TAG : Number;
	static private var ACTIVE_CLUSTER_OFFSET : Object;
	static private var PASSIVE_CLUSTER_OFFSET : Object;

	public function AbilityPageBase();

	private function configUI() : Void;

	private function SetupTabs() : Void;

	private function TabChanged(button:Button) : Void;

	private function UpdateTutorialBlocker();

	private function GetClassWeapon(weaponSlot:Number) : Number;

	private function UpdateHeader() : Void;

	private function CalculateCritBonusTip(weaponLevel:Number) : String;

	private function CalculatePowerBonusTip(weaponLevel:Number) : String;

	private function UpdateCells(clusterId:Number) : Void;

	private function FocusAbility(feat:FeatData) : Void;

	private function HideDetails(hideDetails:Boolean) : Void;

	private function UpdateAbilities(clusterId:Number) : Void;

	private function BuyPoints() : Void;

	private function UpdatePurchaseBlocker(clusterId:Number);

	private function SetupHelpButtons(scope:Object) : Void;

	private function UpdateFooter() : Void;

	private function GetXP() : Number;

	private function GetLastLevelXP() : Number;

	private function GetNextAP() : Number;

	private function GetNextSP() : Number;

	private function BuyAbility(featId:Number);

	private function UnEquipAbility(featId:Number);

	private function EquipAbility(featId:Number, abilityClip:MovieClip);

	private function SlotEquipButtonPressed(buttonId:Number);

	private function RemoveEquipPopup();

	private function SlotFeatTrained();

	private function SlotFeatUntrained();

	private function SlotShortcutAdded();

	private function SlotShortcutRemoved();

	private function SlotPassiveAdded();

	private function SlotPassiveRemoved();

	private function SlotTokenChanged(tokenID:Number, newAmount:Number, oldAmount:Number);

	private function SlotStatChanged(stat:Number);

	private function IsPassiveAbility(spellType:Number);

	private function IsActiveAbility(spellType:Number);

	private function CanAddShortcut(pos:Number, spellId:Number) : Boolean;

	private function CanAddPassive(pos:Number, spellId:Number) : Boolean;

	private function OnClickUnlock();

	private function SlotConfirmUnlockPage(buttonId:Number);

	private function OnClickAurumUnlock();

	private function SlotConfirmAurumUnlockPage(buttonId:Number);

	private function GetUnlockItem() : Number;

	private function GetUnlockItemPrice() : Number;

	private function RemoveHelp();

	private function OnClickHelp();

	private function OnClickVideo();

	private function UnlockVisible(unlock:Boolean);

	private function SlotTagAdded(tagId:Number);

	private function SlotSetLanguage();

	public function OnModuleActivated(config:Archive) : Void;

	public function OnModuleDeactivated();

	public function onUnload();

}