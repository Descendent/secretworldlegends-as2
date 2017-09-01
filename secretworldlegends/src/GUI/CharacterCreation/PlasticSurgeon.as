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
	public var SignalBuyCoupon : com.Utils.Signal;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_WindowTitle : MovieClip;
	private var m_TopHorizontalDivider : MovieClip;
	private var m_FacialFeatures : MovieClip;
	private var m_FacialFeaturesBackground : MovieClip;
	private var m_CharacterSizeSliderLabel : MovieClip;
	private var m_CharacterSizeSlider : Slider;
	private var m_RandomizeButton : FCButton;
	private var m_CancelButton : MovieClip;
	private var m_AddCouponButton : MovieClip;
	private var m_PurchaseButton : MovieClip;
	private var m_ProceedButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_InitialHeight : Number;
	private var m_KeyListener : Object;

	public function PlasticSurgeon();

	private function configUI() : Void;

	private function RandomizeFacialFeature() : Void;

	private function SetLabels() : Void;

	public function LayoutHandler() : Void;

	private function CenterHorizontal(component:MovieClip);

	private function ExitPlasticSurgeon() : Void;

	private function GoToPayment() : Void;

	public function CancelPayment() : Void;

	private function BuyCoupon() : Void;

	private function BuyFeature() : Void;

	private function UpdateProceedButton() : Void;

	private function SlotCharacterScaleChanged(value:Number);

	private function OnCharacterSizeSliderChanged();

	private function KeyUpEventHandler() : Void;

	private function onUnload() : Void;

}