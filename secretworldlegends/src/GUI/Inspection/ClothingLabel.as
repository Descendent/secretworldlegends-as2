import gfx.controls.Label;
import com.GameInterface.InventoryItem;
import com.GameInterface.Tooltip.*;
import com.Utils.ID32;
intrinsic class GUI.Inspection.ClothingLabel extends Label
{
	public var m_ItemData : InventoryItem;
	public var m_InventoryID : ID32;
	public var m_Tooltip : TooltipInterface;

	public function SetData(inventoryID:ID32, inventoryItem:InventoryItem);

	public function configUI();

	public function UpdateData();

	public function SlotRollOver();

	public function SlotRollOut();

	public function OpenTooltip() : Void;

	public function CloseTooltip() : Void;

}