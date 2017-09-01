import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Components.ItemComponent;
import com.GameInterface.DialogIF;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
intrinsic class GUI.LootBox.BuyKeyPanel extends UIComponent
{
	private var m_Item_0 : ItemComponent;
	private var m_Item_1 : ItemComponent;
	private var m_Item_2 : ItemComponent;
	private var m_Item_3 : ItemComponent;
	private var m_Price_0 : MovieClip;
	private var m_Price_1 : MovieClip;
	private var m_Price_2 : MovieClip;
	private var m_Price_3 : MovieClip;
	private var m_BuyButton_0 : Button;
	private var m_BuyButton_1 : Button;
	private var m_BuyButton_2 : Button;
	private var m_BuyButton_3 : Button;
	private var m_Data : Array;
	private var m_Initialized : Boolean;

	public function BuyKeyPanel();

	public function configUI();

	public function SetData(receivedItems:Array) : Void;

	private function PopulateItems();

	private function PurchaseItem0();

	private function SlotConfirmPurchase0(buttonId:Number);

	private function PurchaseItem1();

	private function SlotConfirmPurchase1(buttonId:Number);

	private function PurchaseItem2();

	private function SlotConfirmPurchase2(buttonId:Number);

	private function PurchaseItem3();

	private function SlotConfirmPurchase3(buttonId:Number);

}