import mx.utils.Delegate;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import gfx.controls.ButtonGroup;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import GUI.CharacterCreation.CameraController;
import com.GameInterface.Game.Character;
import com.GameInterface.CharacterCreation.CharacterCreation;
import com.GameInterface.CharacterCreation.ClassData;
import com.GameInterface.SkillWheel.SkillWheel;
import com.GameInterface.SkillWheel.SkillTemplate;
import com.GameInterface.Tooltip.*;
intrinsic dynamic class GUI.CharacterCreation.NameEditor extends UIComponent
{
	public var SignalBack : com.Utils.Signal;
	public var SignalForward : com.Utils.Signal;
	private var m_CameraController : CameraController;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_Title : MovieClip;
	private var m_NamingBox : MovieClip;
	private var m_NamingConfirmBox : MovieClip;
	private var m_NamePreviewer : MovieClip;
	private var m_NamePreviewBar : MovieClip;
	private var m_BackButton : MovieClip;
	private var m_ForwardButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_OutfitSelector : MovieClip;
	private var m_OutfitButtonGroup : ButtonGroup;
	private var m_HelpIcon : MovieClip;
	private var m_KeyListener : Object;
	static private var TEXT_INPUT_DEFAULT_STROKE_COLOR : Number;
	static private var TEXT_INPUT_HIGHLIGHT_STROKE_COLOR : Number;
	static private var MIN_CHAR_COUNT : Number;
	static private var MAX_CHAR_COUNT : Number;

	public function NameEditor();

	private function configUI();

	private function ClickedStreet() : Void;

	private function ClickedClass() : Void;

	private function CheckInputFields() : Void;

	private function TextFieldFocusEventHandler(event:Object) : Void;

	public function GetFirstName() : String;

	public function GetLastName() : String;

	public function GetNickName() : String;

	private function SetLabels();

	private function SetFactionConfirm();

	private function SetClassConfirm();

	public function LayoutHandler();

	private function BackToClassSelector();

	private function GoPlay();

	private function onUnload();

	private function OnFirstNameChanged();

	private function OnLastNameChanged();

	private function OnNickNameChanged();

	private function UpdateNamePreview();

}