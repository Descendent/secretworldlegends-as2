import mx.utils.Delegate;
import gfx.core.UIComponent;
import gfx.controls.ButtonGroup;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.CharacterCreation.CameraController;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
import com.GameInterface.SkillWheel.SkillTemplate;
import com.GameInterface.FeatData;
import com.GameInterface.FeatInterface;
import com.GameInterface.ProjectSpell;
import com.GameInterface.DistributedValue;
intrinsic dynamic class GUI.CharacterCreation.ClassSelector extends UIComponent
{
	private var m_Title : MovieClip;
	private var m_BackButton : MovieClip;
	private var m_ForwardButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_ClassSelectBox : MovieClip;
	private var m_ClassDescBox : MovieClip;
	private var m_HelpIcon : MovieClip;
	public var SignalBack : com.Utils.Signal;
	public var SignalForward : com.Utils.Signal;
	private var m_CameraController : CameraController;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_SelectedClassId : Object;
	static private var MAX_DIFFICULTY : Number;

	public function ClassSelector();

	private function configUI();

	private function ClassSelected(classId:Number, skillTemplate:SkillTemplate, primaryRole:Number, secondaryRole:Number, difficulty:Number);

	private function GetWeaponRequirements(template:SkillTemplate);

	private function SetLabels();

	public function LayoutHandler();

	private function BackToOutfitSelector();

	private function GoForward();

}