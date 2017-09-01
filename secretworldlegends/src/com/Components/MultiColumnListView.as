import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.HeaderView;
import com.Components.MultiColumnList.MCLItem;
import gfx.core.UIComponent;
import com.Utils.Signal;
import mx.utils.Delegate;
intrinsic class com.Components.MultiColumnListView extends UIComponent
{
	private var m_HeaderSpacing : Number;
	private var m_ItemRendererName : String;
	private var m_RowCount : Number;
	private var m_AutoRowCount : Number;
	private var m_RowHeight : Number;
	private var m_AutoRowHeight : Number;
	private var m_ScrollPosition : Number;
	private var m_ShowBottomLine : Boolean;
	private var m_SortColumn : Number;
	private var m_SortDirection : Number;
	static private var s_SortColumn : Number;
	private var m_SecondarySortColumn : Number;
	private var m_UseMask : Boolean;
	private var m_DisableRightClickSelection : Boolean;
	private var m_LineColor : Number;
	private var m_LineThickness : Number;
	private var m_HeaderView : HeaderView;
	private var m_ListView : MovieClip;
	private var m_Lines : MovieClip;
	private var m_Background : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_Mask : MovieClip;
	private var m_ItemRenderers : Array;
	private var m_ColumnTable : Array;
	private var m_Items : Array;
	private var m_SelectedItem : Number;
	public var SignalSizeChanged : Signal;
	public var SignalItemClicked : Signal;
	public var SignalSortClicked : Signal;
	public var SignalItemMouseDown : Signal;
	public var SignalMovieClipAdded : Signal;

	public function MultiColumnListView();

	public function configUI();

	public function DrawItemRenderers();

	private function DrawLines();

	public function CreateItemRenderer(index:Number) : MovieClip;

	public function Resort();

	public function SlotSortColumn(columnId:Number, direction:Number);

	public function SlotItemClicked(itemIndex:Number, buttonIndex:Number);

	public function SetSelection(index:Number) : Void;

	public function SetSelectionById(itemId:Object) : Void;

	public function GetSelectedIndex() : Number;

	public function ClearSelection();

	public function SlotItemMouseDown(itemIndex:Number, buttonIndex:Number);

	public function SlotMovieClipAdded(itemIndex:Number, columnId:Number, movieClip:MovieClip);

	public function SlotResizeColumn(columnId:Number, width:Number);

	public function SlotAutoResizeColumn(columnId:Number);

	public function CompareItems(item1:Object, item2:Object);

	public function SetItemRenderer(name:String);

	public function SetShowBottomLine(showLine:Boolean);

	public function SetHeaderSpacing(headerSpacing:Number);

	public function GetHeaderSpacing() : Number;

	public function GetRowCount() : Number;

	public function GetRowHeight() : Number;

	public function SetRowCount(rowCount:Number);

	public function SetSortColumn(columnId:Number);

	public function GetSortColumn() : Number;

	public function SetSortDirection(direction:Number);

	public function GetSortDirection() : Number;

	public function GetColumn(id:Number);

	public function GetColumnIndex(id:Number) : Number;

	public function GetColumnTable();

	public function GetItems() : Array;

	public function AddItems(itemArray:Array);

	public function AddItem(item:MCLItem);

	public function GetIndexById(itemId:Object) : Number;

	public function HasItemById(itemId:Object) : Boolean;

	public function RemoveItemById(itemId:Object);

	public function RemoveItem(index:Number);

	public function RemoveAllItems();

	public function SetItems(itemsList:Array) : Void;

	public function SetItem(item:MCLItem);

	public function AddColumn(columnId:Number, name:String, defaultWidth:Number, flags:Number, minWidth:Number);

	public function LayoutHeaders(columnsRemoved:Boolean);

	public function LayoutMask();

	public function ResetRenderers();

	public function LayoutRenderers();

	public function IsColumnActive(id:Number);

	public function SetSize(newWidth:Number, newHeight:Number);

	public function AutoSizeColumns();

	public function GetColumnWidth(columnId:Number) : Number;

	public function SetColumnWidth(columnId:Number, width:Number);

	public function AutoUpdateRowCount();

	private function GetWidthOfColumns() : Number;

	private function GetColumnX(columnId:Number) : Number;

	private function GetNumResizeableColumns(startIndex:Number, endIndex:Number) : Number;

	public function SetScrollBar(scrollBar:MovieClip);

	public function UpdateScrollBar();

	private function SlotScroll(event:Object);

	private function scrollWheel(delta:Number) : Void;

	public function SetScrollPosition(position:Number);

	public function DisableRightClickSelection(disable:Boolean) : Void;

	public function GetScrollPosition() : Number;

	public function SetLineStyle(thickness:Number, color:Number);

	public function SetUseMask(useMask:Boolean);

	public function SetSecondarySortColumn(column:Number) : Void;

}