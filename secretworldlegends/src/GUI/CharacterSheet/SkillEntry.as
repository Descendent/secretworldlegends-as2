import gfx.core.UIComponent;
import com.Utils.LDBFormat;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Skills;
intrinsic class GUI.CharacterSheet.SkillEntry extends UIComponent
{
	private var m_SkillName : TextField;
	private var m_SkillValue : TextField;
	private var m_Skill : Number;

	public function SkillEntry();

	public function SetSkill(skill:Number);

	public function ClearSignals() : Void;

	public function SlotSkillUpdated(skill:Number);

	private function SlotForceSkillUpdate() : Void;

	private function UpdateSkill();

}