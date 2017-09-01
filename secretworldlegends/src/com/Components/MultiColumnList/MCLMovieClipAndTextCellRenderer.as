import com.Components.MultiColumnList.MCLItemValueData;
import com.Components.MultiColumnList.MCLItemRenderer;
intrinsic class com.Components.MultiColumnList.MCLMovieClipAndTextCellRenderer extends com.Components.MultiColumnList.MCLBaseCellRenderer
{
	public var m_Padding : Number;
	public var m_MovieClipWidth : Number;

	public function MCLMovieClipAndTextCellRenderer(parent:MCLItemRenderer, id:Number, valueData:MCLItemValueData);

	public function SetPos(x:Number, y:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

}