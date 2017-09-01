import gfx.core.UIComponent;
import com.Utils.LDBFormat;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Skills;
intrinsic class GUI.CharacterSheet.StatItem extends UIComponent
{
	private var m_Description : TextField;
	private var m_StatFirst : TextField;
	private var m_StatSecond : TextField;
	private var m_StatThird : TextField;
	private var m_Weapons : Array;
	private var m_Stats : Array;
	private var m_Skill : Number;

	public function StatItem();

	public function SetSkill(skill:Number);

	public function ClearSignals() : Void;

	public function SlotSkillUpdated(skill:Number);

	private function SlotForceSkillUpdate() : Void;

	public function SetWeapons(weapons:Array);

	private function UpdateSkill();

}