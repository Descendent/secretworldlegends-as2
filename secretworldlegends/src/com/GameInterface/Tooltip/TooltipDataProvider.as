import com.Utils.ID32;
intrinsic class com.GameInterface.Tooltip.TooltipDataProvider
{
	static public function GetFeatTooltip(featID:Number, propertiesOnly:Boolean) : com.GameInterface.Tooltip.TooltipData;

	static public function GetSpellTooltip(spellID:Number, featID:Number) : com.GameInterface.Tooltip.TooltipData;

	static public function GetBuffTooltip(spellID:Number, characterID:com.Utils.ID32) : com.GameInterface.Tooltip.TooltipData;

	static public function GetPassiveTooltip(passiveSlot:Number) : com.GameInterface.Tooltip.TooltipData;

	static public function GetComboTooltip(comboID:Number) : com.GameInterface.Tooltip.TooltipData;

	static public function GetInventoryItemTooltip(inventoryID:com.Utils.ID32, itemPos:Number, compareInventoryID:ID32, comparePos:Number) : com.GameInterface.Tooltip.TooltipData;

	static public function GetInventoryItemTooltipCompareInventoryItem(inventoryID:com.Utils.ID32, itemPos:Number, compareInventoryID:ID32, comparePos:Number) : com.GameInterface.Tooltip.TooltipData;

	static public function GetInventoryItemTooltipCompareACGItem(inventoryID:com.Utils.ID32, itemPos:Number, compareAcgItem:com.GameInterface.ACGItem) : com.GameInterface.Tooltip.TooltipData;

	static public function GetACGItemTooltip(acgItem:com.GameInterface.ACGItem, itemLevel:Number) : com.GameInterface.Tooltip.TooltipData;

	static public function GetShortcutbarTooltip(shortcuPos:Number) : com.GameInterface.Tooltip.TooltipData;

}