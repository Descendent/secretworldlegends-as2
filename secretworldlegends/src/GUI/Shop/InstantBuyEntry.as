import gfx.core.UIComponent;
import mx.utils.Delegate;
import com.Components.ItemComponent;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tooltip.*;
import com.GameInterface.ShopInterface;
import com.GameInterface.DialogIF;
import com.GameInterface.Game.Character;
import gfx.controls.Button;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.Utils.Signal;
intrinsic class GUI.Shop.InstantBuyEntry extends UIComponent
{
	private var m_Item : ItemComponent;
	private var m_Name : TextField;
	private var m_Price : MovieClip;
	private var m_Button : Button;
	private var m_InventoryItem : InventoryItem;
	private var m_Initialized : Boolean;
	private var m_Tooltip : TooltipInterface;
	private var SignalClose : Signal;
	private var m_OverridePrice : Number;
	private var m_OverrideCurrency : String;
	static private var NAME_START_Y : Number;
	static private var ITEM_NAME_HEIGHT : Number;

	public function InstantBuyEntry();

	private function configUI();

	private function onUnload();

	public function SetData(inventoryItem:InventoryItem);

	public function OverridePrice(overridePrice:Number);

	public function OverrideCurrency(overrideCurrency:String);

	private function SetDisplay();

	private function OpenTooltip();

	private function CloseTooltip();

	private function PurchaseItem();

	private function SlotConfirmPurchase(buttonId:Number);

}