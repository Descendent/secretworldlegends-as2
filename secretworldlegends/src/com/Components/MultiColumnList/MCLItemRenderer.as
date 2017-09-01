import gfx.core.UIComponent;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.MCLItem;
import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.Components.MultiColumnList.MCLTextCellRenderer;
import com.Components.MultiColumnList.MCLMovieClipCellRenderer;
import com.Components.MultiColumnList.MCLMovieClipAndTextCellRenderer;
import com.Components.MultiColumnList.MCLItemValueData;
import com.Utils.Signal;
import mx.utils.Delegate;
intrinsic class com.Components.MultiColumnList.MCLItemRenderer extends UIComponent
{
	private var m_Index : Number;
	private var m_ItemData : MCLItem;
	private var m_ColumnViews : Array;
	private var m_Background : MovieClip;
	public var SignalClicked : Signal;
	public var SignalMouseDown : Signal;
	public var SignalMovieClipAdded : Signal;

	public function MCLItemRenderer();

	public function MovieClipAdded(columnId:Number, movieClip:MovieClip);

	public function SetIndex(index:Number);

	public function SetData(listView:MultiColumnListView, data:MCLItem);

	public function HasData() : Boolean;

	private function SlotMousePress(buttonindex:Number);

	private function SlotMouseRelease(buttonindex:Number);

	public function SetSelected(selected:Boolean);

	public function GetDesiredWidth(id:Number);

	private function GetColumnIndexFromId(id:Number);

	public function Clear();

	public function UpdateLayout(listView:MultiColumnListView);

	public function SetWidth(newWidth:Number);

	public function SetHeight(newheight:Number);

	private function CreateTextRenderer(id:Number, valueData:MCLItemValueData, width:Number) : MCLBaseCellRenderer;

	private function CreateMovieClipRenderer(id:Number, movieClip:Object, width:Number) : MCLBaseCellRenderer;

	private function CreateMovieClipAndTextRenderer(id:Number, valueData:MCLItemValueData, width:Number) : MCLBaseCellRenderer;

}