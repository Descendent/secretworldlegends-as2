import com.GameInterface.InventoryItem;
import com.GameInterface.Inventory;
import com.Components.ItemComponent;
import gfx.controls.ListItemRenderer;
import gfx.utils.Constraints;
import com.GameInterface.Tooltip.*;
import mx.utils.Delegate;
import GUI.Shop.ShopWindowContent;
import com.Utils.Colors;
import com.Utils.ID32;
import com.GameInterface.Game.Character;
intrinsic class GUI.Shop.RepairListItemRenderer extends ListItemRenderer
{
	private var m_InventoryID : ID32;
	private var m_RepairItem : InventoryItem;
	private var m_Icon : MovieClip;
	private var m_Name : MovieClip;
	private var m_Price : MovieClip;
	private var m_PriceWidth : Number;
	private var m_Background : MovieClip;
	private var m_Tooltip : TooltipInterface;

	private function RepairListItemRenderer();

	private function configUI();

	public function setData(repairItem:Object);

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