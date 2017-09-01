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
	public var SignalBuyCoupon : com.Utils.Signal;
	private var m_CharacterCreationIF : com.GameInterface.CharacterCreation.CharacterCreation;
	private var m_HairMakeUp : MovieClip;
	private var m_HairStyleBackground : MovieClip;
	private var m_FacialFeatureBackground : MovieClip;
	private var m_RandomizeHairButton : FCButton;
	private var m_RandomizeFacialFeatureButton : MovieClip;
	private var m_CancelButton : MovieClip;
	private var m_AddCouponButton : MovieClip;
	private var m_PurchaseButton : MovieClip;
	private var m_ProceedButton : MovieClip;
	private var m_NavigationBar : MovieClip;
	private var m_Gender : Number;
	private var m_MonologSoundCoolDown : Boolean;
	private var m_TimeCounter : Number;
	private var m_KeyListener : Object;

	public function BarberShop();

	private function configUI() : Void;

	private function PlayMonologSound() : Void;

	private function DeactivateMonologSoundCoolDown() : Void;

	private function UpdateProceedButton() : Void;

	private function RandomizeHairStyle() : Void;

	private function RandomizeFacialFeature() : Void;

	private function SetLabels() : Void;

	public function LayoutHandler() : Void;

	private function ExitBarberShop() : Void;

	private function GoToPayment() : Void;

	public function CancelPayment() : Void;

	private function BuyCoupon() : Void;

	private function BuyFeature() : Void;

	private function KeyUpEventHandler() : Void;

	private function onUnload() : Void;

}