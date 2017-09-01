import com.GameInterface.Tooltip.*;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.FeatData;
import com.Utils.LDBFormat;
intrinsic dynamic class GUI.SkillHive.SkillhiveCellTooltip extends MovieClip
{
	private var m_CellName : TextField;
	private var m_Tooltip : TooltipInterface;
	private var m_NumAbilities : Object;
	private var m_HoveredAbilityIdx : Object;
	public var SignalAbilityPressed : Signal;

	public function SkillhiveCellTooltip();

	public function SetName(name:String);

	public function SetAbility(feat:FeatData, index:Number, isInTemplate:Boolean);

	public function SetCover(cover:Boolean, index:Number);

	private function CloseTooltip() : Void;

	private function RollOverAbility(abilityClip:MovieClip);

	private function RollOutAbility(abilityIndex:Number);

	public function onMouseMove();

	public function onMouseDown();

}