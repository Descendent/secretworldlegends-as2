import com.Utils.Text;
import com.Components.MultiColumnList.MCLItemValueData;
intrinsic class com.Components.MultiColumnList.MCLTextCellRenderer extends com.Components.MultiColumnList.MCLBaseCellRenderer
{
	public var m_Padding : Number;

	public function MCLTextCellRenderer(parent:MovieClip, id:Number, valueData:MCLItemValueData);

	public function SetText(text:String);

	public function SetPos(x:Number, y:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

}