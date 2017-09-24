import com.Components.WindowComponentContent;
import gfx.controls.Button;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.Game.Character;
import com.GameInterface.DistributedValue;
import com.Utils.ID32;
import com.Utils.LDBFormat;
intrinsic class GUI.CharacterSheet.CharacterSheet2DContent extends WindowComponentContent
{
	private var m_Equipment : MovieClip;
	private var m_NameBox : MovieClip;
	private var m_SkillsList : MovieClip;
	private var m_DressingRoomButton : Button;
	private var m_SprintsPetsButton : Button;
	private var m_EmotesButton : Button;
	private var m_AbilitiesButton : Button;
	private var m_StatsHeader : TextField;
	private var m_EquipmentHeader : TextField;
	private var m_WeaponsHeader : TextField;
	private var m_Character : Character;

	public function CharacterSheet2DContent();

	private function configUI() : Void;

	private function SetLabels();

	private function SetNameBox() : Void;

	private function CenterNameBox();

	private function UpdateTitleDropdownContents() : Void;

	private function TitleSelected(event:Object) : Void;

	public function SlotTagAdded(tagId:Number, characterId:ID32);

	private function SlotStatChanged(stat:Number);

	private function SlotDressingRoomClicked();

	private function SlotSprintsPetsClicked();

	private function SlotEmotesClicked();

	private function SlotAbilitiesClicked();

}