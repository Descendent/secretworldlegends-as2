import com.GameInterface.InventoryItem;
import com.Components.ItemComponent;
import gfx.controls.ListItemRenderer;
import gfx.utils.Constraints;
import com.GameInterface.Tooltip.*;
import mx.utils.Delegate;
import com.Utils.Colors;
import com.Utils.ID32;
import GUI.Shop.ShopWindowContent;
import com.GameInterface.Game.Character;
intrinsic class GUI.Shop.ShopListItemRenderer extends ListItemRenderer
{
	private var m_InventoryItem : InventoryItem;
	private var m_InventoryID : ID32;
	private var m_Name : TextField;
	private var m_Icon : MovieClip;
	private var m_Price : TextField;
	private var m_Background : MovieClip;
	private var m_Multiplier : Number;
	private var m_Tooltip : TooltipInterface;
	private var m_PriceWidth : Number;
	private var m_Type : Number;

	private function ShopListItemRenderer();

	private function configUI();

	public function setData(inventoryItem:Object);

	private function SetPrice();

	private function AddToken(tokenId:Number, price:Number) : Boolean;

	private function ClearPrice();

	public function CreateIcon();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

	private function SlotIconRollOver();

	private function SlotIconRollOut();

	public function SlotSelected();

}