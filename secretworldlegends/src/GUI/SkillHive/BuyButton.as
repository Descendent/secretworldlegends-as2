import com.GameInterface.Game.Character;
import com.Utils.Signal;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
intrinsic class GUI.SkillHive.BuyButton extends MovieClip
{
	private var m_Character : Character;
	private var m_Cost : Number;
	private var m_SkillPointsLabel : TextField;
	private var m_SkillPointsText : TextField;
	private var m_Background : MovieClip;
	public var SignalPressed : Signal;

	public function BuyButton();

	public function SetCharacter(character:Character);

	public function onRollOver();

	public function onRollOut();

	public function onRelease();

	public function SetCost(cost:Number);

	private function UpdateColors();

	public function toString() : String;

}