import GUI.PetInventory.PetInventoryContentBase;
import com.Utils.LDBFormat;
import com.Utils.Archive;
import gfx.controls.Button;
import gfx.controls.CheckBox;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.LoreBase;
import com.GameInterface.SpellBase;
import com.GameInterface.Utils;
import com.GameInterface.FeatInterface;
import com.GameInterface.FeatData;
import com.GameInterface.GUIModuleIF;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import com.Utils.Colors;
import mx.utils.Delegate;
import com.Utils.Text;
import GUI.PetInventory.PetClip;
import gfx.controls.DropdownMenu;
intrinsic class GUI.PetInventory.MountInventoryContent extends PetInventoryContentBase
{
	private var m_SprintLevelText : TextField;
	private var m_TypeLabel : TextField;
	private var m_EquipLabel : TextField;
	private var m_TypeDropdown : DropdownMenu;
	private var m_EquipDropdown : DropdownMenu;
	private var m_SpeedDropdown : DropdownMenu;
	private var m_UpgradeSprintButton : MovieClip;
	private var m_SprintFeats : Array;
	private var m_SprintItems : Array;
	private var DEFAULT_SPRINT_ID : Number;

	public function MountInventoryContent();

	private function configUI();

	private function OnModuleActivated(config:Archive) : Void;

	private function SetLabels() : Void;

	private function UpgradeSprint() : Void;

	private function UpdateSprintLevels() : Void;

	private function UpdateSelectedSprint() : Void;

	private function GetSprintLevelText(level:Number) : String;

	private function GetSprintSpeed(level:Number) : Number;

	private function GetNodes() : Void;

	public function SelectNodeClip(nodeClip:PetClip) : Void;

	private function FavoriteSelected() : Void;

	private function FiltersChanged() : Void;

	private function SpeedChanged() : Void;

	private function SummonNode(nodeId:Number) : Void;

	private function GetDisplayArray() : Array;

	private function SlotFeatTrained(featId:Number) : Void;

	private function EquipStyleChanged() : Void;

}