import com.Utils.LDBFormat;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Game.Character;
import mx.controls.NumericStepper;
intrinsic class GUI.SkillHive.CharacterSkillsSidePanel extends MovieClip
{
	static private var BORDER_LINE_WIDTH : Number;
	private var m_BorderLine : MovieClip;
	private var m_Background : MovieClip;
	private var m_Text : MovieClip;
	private var m_DescriptiveText : TextField;
	private var m_Height : Number;
	private var m_Width : Number;
	private var m_SkillPointsString : String;
	private var m_TotalPointsSpentString : String;
	private var m_SPString : String;

	public function CharacterSkillsSidePanel();

	private function PositionText(scale:Number) : Void;

	public function SetSize(width:Number, height:Number) : Void;

	public function SetText(pointsValue:Number, spentValue:Number) : Void;

	public function SetTextScale(scale:Number) : Void;

}