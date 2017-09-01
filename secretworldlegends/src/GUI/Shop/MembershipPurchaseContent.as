import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.ShopInterface;
import com.GameInterface.DistributedValue;
import gfx.controls.Button;
import com.Utils.LDBFormat;
intrinsic class GUI.Shop.MembershipPurchaseContent extends WindowComponentContent
{
	private var m_PriceText : TextField;
	private var m_Name : TextField;
	private var m_ConfirmButton : Button;
	private var m_Art : MovieClip;
	private var m_Character : Character;

	public function MembershipPurchaseContent();

	private function configUI();

	private function SetLabels() : Void;

	private function SlotMemberStatusUpdated(member:Boolean);

	private function SlotMembershipPriceUpdated(price:String);

	private function ConfirmClickHandler() : Void;

}