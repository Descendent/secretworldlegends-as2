import mx.utils.Delegate;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.controls.ButtonGroup;
import gfx.controls.Slider;
import gfx.controls.Label;
import gfx.controls.TextArea;
import GUI.CharacterCreation.CameraController;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
intrinsic dynamic class GUI.CharacterCreation.CharacterEditor extends UIComponent
{
	public var SignalBack : com.Utils.Signal;
	public var SignalForward : com.Utils.Signal;
	private var m_CameraController : CameraController;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_Title : Label;
	private var m_GenderSelector : MovieClip;
	private var m_FeatureSelectBox : MovieClip;
	private var m_HexGridPicker : MovieClip;
	private var m_CharacterSizeSliderLabel : MovieClip;
	private var m_CharacterSizeSlider : Slider;
	private var m_NavigationBar : MovieClip;
	private var m_BackButton : MovieClip;
	private var m_ForwardButton : MovieClip;
	private var m_HelpIcon : MovieClip;
	private var m_NameInputDefaultText : String;
	private var m_CurrentFeature : Number;
	private var FEATURE_HEAD : Number;
	private var FEATURE_FACE : Number;
	private var FEATURE_HAIR : Number;
	private var FEATURE_EYEBROW : Number;
	private var FEATURE_EYE : Number;
	private var FEATURE_MISC : Number;
	private var FEATURE_MAKEUP : Number;

	public function CharacterEditor();

	private function configUI();

	private function SetLabels();

	private function CenterHorizontal(component:MovieClip);

	public function LayoutHandler();

	private function FeatureSelected(featureIndex:Number);

	private function ItemSelected(itemIndex:Number);

	private function ColorSelected(colorIndex:Number);

	private function SlotGenderChanged(gender:Number);

	private function UnlockCamera();

	private function SlotMakeupChanged(index:Number);

	private function BackToFactionSelection();

	private function GoForward();

	private function UpdateForwardButton() : Void;

	private function ClickedMale();

	private function ClickedFemale();

	private function OnCharacterSizeSliderChanged();

	private function SlotCharacterScaleChanged(value:Number);

}