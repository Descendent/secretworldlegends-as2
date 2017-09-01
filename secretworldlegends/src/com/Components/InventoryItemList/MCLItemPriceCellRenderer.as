import com.Utils.Text;
intrinsic class com.Components.InventoryItemList.MCLItemPriceCellRenderer extends com.Components.MultiColumnList.MCLBaseCellRenderer
{
	private var m_Type1 : MovieClip;
	private var m_Price1 : TextField;
	private var m_Type2 : MovieClip;
	private var m_Price2 : TextField;

	public function MCLItemPriceCellRenderer(parent:MovieClip, id:Number, type1:Number, price1:Number, type2:Number, price2:Number, priceColor1:Number, priceColor2:Number);

	public function SetPos(x:Number, y:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

}