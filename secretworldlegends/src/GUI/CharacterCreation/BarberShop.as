import com.Components.FCButton;
import com.GameInterface.Game.Character;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.core.UIComponent;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic dynamic class GUI.CharacterCreation.BarberShop extends UIComponent
{
	public var SignalBack : com.Utils.Signal;
	public var SignalForward : com.Utils.Signal;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_CancelButton : MovieClip;
	private var m_ProceedButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_FeatureSelectBox : MovieClip;
	private var m_HexGridPicker : MovieClip;
	private var m_Gender : Number;
	private var m_CurrentFeature : Number;
	private var m_MonologSoundCoolDown : Boolean;
	private var m_TimeCounter : Number;
	private var m_KeyListener : Object;
	private var FEATURE_HEAD : Number;
	private var FEATURE_FACE : Number;
	private var FEATURE_HAIR : Number;
	private var FEATURE_EYEBROW : Number;
	private var FEATURE_EYE : Number;
	private var FEATURE_MISC : Number;
	private var FEATURE_MAKEUP : Number;

	public function BarberShop();

	private function configUI() : Void;

	private function FeatureSelected(featureIndex:Number);

	private function ItemSelected(itemIndex:Number);

	private function ColorSelected(colorIndex:Number);

	private function SlotMakeupChanged(index:Number);

	private function PlayMonologSound() : Void;

	private function DeactivateMonologSoundCoolDown() : Void;

	private function UpdateProceedButton() : Void;

	private function SetLabels() : Void;

	public function LayoutHandler() : Void;

	private function ExitBarberShop() : Void;

	private function GoToPayment() : Void;

	public function CancelPayment() : Void;

	private function KeyUpEventHandler() : Void;

	private function onUnload() : Void;

}