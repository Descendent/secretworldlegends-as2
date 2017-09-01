import com.Components.MultiColumnList.MCLItem;
import com.Components.MultiColumnList.MCLItemValue;
import com.Components.MultiColumnList.MCLItemValueData;
intrinsic class com.Components.MultiColumnList.MCLItemDefault extends MCLItem
{
	static public var LIST_ITEMTYPE_STRING : Object;
	static public var LIST_ITEMTYPE_NUMBER : Object;
	static public var LIST_ITEMTYPE_MOVIECLIP_SYMBOL : Object;
	static public var LIST_ITEMTYPE_MOVIECLIP_RDB : Object;
	static public var LIST_ITEMTYPE_MOVIECLIP_AND_TEXT : Object;
	static public var LIST_ITEMTYPE_STRING_SORT_BY_NUMBER : Object;
	private var m_Values : Object;

	public function MCLItemDefault(id:Object);

	public function SetValue(id:Number, value:MCLItemValueData, valueType:Number);

	public function GetValues() : Object;

	public function Compare(sortColumn:Number, item:MCLItem);

}