import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.ShopInterface;
import com.GameInterface.DistributedValue;
import gfx.controls.Button;
import com.Utils.LDBFormat;
intrinsic class GUI.Shop.SAFCollectorPurchaseContent extends WindowComponentContent
{
	private var m_PriceText : TextField;
	private var m_Name : TextField;
	private var m_ConfirmButton : Button;
	private var m_Art : MovieClip;
	private var m_Character : Character;

	public function SAFCollectorPurchaseContent();

	private function configUI();

	private function SetLabels() : Void;

	private function SlotSAFCollectorsPriceUpdated(price:String);

	private function ConfirmClickHandler() : Void;

}