import com.GameInterface.CharacterPointData;
import com.Utils.Signal;
import com.GameInterface.ProjectFeatInterface;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
intrinsic class GUI.SkillHive.CharacterSkillsCategoryContainer extends MovieClip
{
	private var m_InvisibleButton : MovieClip;
	private var m_Label : TextField;
	private var m_Category : String;
	private var m_Skills : Array;
	private var m_NumAnimating : Number;
	private var m_InitialHeight : Number;
	public var SignalStartAnimation : Signal;
	public var SignalStopAnimation : Signal;

	public function CharacterSkillsCategoryContainer();

	public function onLoad() : Void;

	public function onEnterFrame() : Void;

	public function AddSkills(skills:Array) : Void;

	private function InvisibleButtonClickHandler() : Void;

	public function GetBackgroundHeight() : Number;

	public function SlotStartAnimation() : Void;

	public function SlotStopAnimation() : Void;

	public function UpdateCharacterSkillPoints(newAmount:Number) : Void;

	public function SetLabel(value:String) : Void;

}