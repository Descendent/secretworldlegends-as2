import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.HeaderButton;
import com.Utils.Signal;
import gfx.core.UIComponent;
intrinsic class com.Components.MultiColumnList.HeaderView extends UIComponent
{
	private var m_HeaderButtons : Array;
	private var m_HeaderButtonDividers : Array;
	private var m_ListView : MultiColumnListView;
	private var m_RendererName : String;
	public var SignalSortColumn : Signal;
	public var SignalAutoResizeColumn : Signal;
	public var SignalResizeColumn : Signal;
	public var m_HeaderDividerClip : MovieClip;
	public var m_HeaderClip : MovieClip;

	public function HeaderView();

	public function SetMultiColumnListView(multiColumnListView:MultiColumnListView);

	public function SetItemRenderer(name:String);

	public function GetHeaderButton(id:Number);

	public function LayoutColumns(columnSpacing:Number, columnRemoved:Boolean);

	public function CreateHeaderDivider(id:Number) : MovieClip;

	public function UpdateResize(id:Number);

	public function AutoResize(id:Number);

	public function SlotSort(event:Object);

	public function GetButtonDivider(id:Number);

	public function GetButton(id:Number);

}