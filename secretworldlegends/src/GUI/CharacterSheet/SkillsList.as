import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.ButtonGroup;
import com.Utils.LDBFormat;
import com.GameInterface.Game.Character;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tooltip.TooltipUtils;
import GUI.CharacterSheet.SkillEntry;
intrinsic class GUI.CharacterSheet.SkillsList extends UIComponent
{
	private var m_OverviewHeader : TextField;
	private var m_PrimaryHeader : TextField;
	private var m_SecondaryHeader : TextField;
	private var m_LevelName : TextField;
	private var m_LevelValue : TextField;
	private var m_ItemPowerName : TextField;
	private var m_ItemPowerValue : TextField;
	private var m_HPName : TextField;
	private var m_HPValue : TextField;
	private var m_PrimaryWeaponButton : Button;
	private var m_SecondaryWeaponButton : Button;
	private var m_HP : SkillEntry;
	private var m_CombatPower : SkillEntry;
	private var m_HealingPower : SkillEntry;
	private var m_Protection : SkillEntry;
	private var m_HitRating : SkillEntry;
	private var m_CritChance : SkillEntry;
	private var m_CritPower : SkillEntry;
	private var m_DefenseRating : SkillEntry;
	private var m_EvadeChance : SkillEntry;
	private var m_WeaponButtonGroup : ButtonGroup;
	private var m_Character : Character;
	private var m_Inventory : Inventory;
	private var m_PrimaryWeaponIcon : MovieClip;
	private var m_SecondaryWeaponIcon : MovieClip;

	public function SkillsList();

	public function configUI();

	private function InitializeSkills();

	public function SlotStatChanged(stat:Number);

	private function SlotItemAdded(inventoryID:com.Utils.ID32, itemPos:Number);

	private function SlotItemRemoved(inventoryID:com.Utils.ID32, itemPos:Number, moved:Boolean);

	private function SetWeaponButtonIcons();

	private function WeaponChanged(button:Button) : Void;

}