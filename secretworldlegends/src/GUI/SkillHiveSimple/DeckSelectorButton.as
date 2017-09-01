import gfx.controls.ListItemRenderer;
import com.Utils.LDBFormat;
import com.GameInterface.SkillWheel.SkillTemplate;
import com.GameInterface.FeatData;
import com.GameInterface.FeatInterface;
import com.GameInterface.ProjectSpell;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Tooltip.TooltipUtils;
intrinsic class GUI.SkillHiveSimple.DeckSelectorButton extends ListItemRenderer
{
	private var m_Background : MovieClip;
	private var m_Frame : MovieClip;
	private var m_ClassName : TextField;
	private var m_Weapon_0 : MovieClip;
	private var m_Weapon_1 : MovieClip;
	private var m_IsConfigured : Boolean;

	public function DeckSelectorButton();

	private function configUI();

	public function setData(deckData:Object);

	private function UpdateVisuals();

	private function GetWeaponRequirements(template:SkillTemplate);

}