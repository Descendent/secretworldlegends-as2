import com.Components.FCButton;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.core.UIComponent;
import gfx.controls.Slider;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic dynamic class GUI.CharacterCreation.PlasticSurgeon extends UIComponent
{
	public var SignalBack : com.Utils.Signal;
	public var SignalForward : com.Utils.Signal;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_WindowTitle : MovieClip;
	private var m_TopHorizontalDivider : MovieClip;
	private var m_CharacterSizeSliderLabel : MovieClip;
	private var m_CharacterSizeSlider : Slider;
	private var m_CancelButton : MovieClip;
	private var m_ProceedButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_FeatureSelectBox : MovieClip;
	private var m_HexGridPicker : MovieClip;
	private var m_InitialHeight : Number;
	private var m_KeyListener : Object;
	private var FEATURE_HEAD : Number;
	private var FEATURE_FACE : Number;
	private var FEATURE_HAIR : Number;
	private var FEATURE_EYEBROW : Number;
	private var FEATURE_EYE : Number;
	private var FEATURE_MISC : Number;
	private var FEATURE_MAKEUP : Number;

	public function PlasticSurgeon();

	private function configUI() : Void;

	private function SetLabels() : Void;

	public function LayoutHandler() : Void;

	private function CenterHorizontal(component:MovieClip);

	private function FeatureSelected(featureIndex:Number);

	private function ItemSelected(itemIndex:Number);

	private function ColorSelected(colorIndex:Number);

	private function ExitPlasticSurgeon() : Void;

	private function GoToPayment() : Void;

	public function CancelPayment() : Void;

	private function UpdateProceedButton() : Void;

	private function SlotCharacterScaleChanged(value:Number);

	private function OnCharacterSizeSliderChanged();

	private function KeyUpEventHandler() : Void;

	private function onUnload() : Void;

}