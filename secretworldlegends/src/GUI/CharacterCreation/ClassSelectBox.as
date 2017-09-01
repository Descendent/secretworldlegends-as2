import gfx.core.UIComponent;
import gfx.controls.ButtonGroup;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.SkillWheel.SkillWheel;
import com.GameInterface.SkillWheel.SkillTemplate;
import com.GameInterface.FeatData;
import com.GameInterface.FeatInterface;
import com.GameInterface.ProjectSpell;
import com.GameInterface.CharacterCreation.CharacterCreation;
import com.GameInterface.CharacterCreation.ClassData;
intrinsic dynamic class GUI.CharacterCreation.ClassSelectBox extends UIComponent
{
	private var m_Header : TextField;
	private var m_ClassButton_0 : Button;
	private var m_ClassButton_1 : Button;
	private var m_ClassButton_2 : Button;
	private var m_ClassButton_3 : Button;
	private var m_ClassButton_4 : Button;
	private var m_ClassButton_5 : Button;
	private var m_ClassButton_6 : Button;
	private var m_ClassButton_7 : Button;
	private var m_ClassButton_8 : Button;
	private var m_TemplateData : Array;
	private var m_SelectedClass : Number;
	private var SignalClassSelected : Signal;
	private var m_CharacterCreationIF : CharacterCreation;
	private var m_Initialized : Boolean;
	private var m_ClassButtonGroup : ButtonGroup;
	private var NUM_CLASSES : Number;
	private var NO_CLASS : Number;

	public function ClassSelectBox();

	private function configUI();

	private function SelectedClassChanged(event:Object);

	private function FillClassButtons();

	private function GetWeaponRequirements(template:SkillTemplate);

	private function SetLabels();

	public function SetCharacterCreationIF(characterCreationIF:CharacterCreation);

}