import flash.geom.Point;
import com.Utils.Signal;
import com.Utils.Colors;
intrinsic class com.Components.ListHeader extends MovieClip
{
	private var m_ListItems : Array;
	private var m_ListSize : Point;
	private var m_CurrentSize : Point;
	private var m_ListItemRenderer : String;
	public var m_Background : MovieClip;
	static public var SORTORDER_NONE : Number;
	static public var SORTORDER_ASC : Number;
	static public var SORTORDER_DESC : Number;
	private var m_SelectedColor : Number;
	private var m_OverColor : Number;
	private var m_LineColor : Number;
	private var m_LineThickness : Number;
	public var SignalClicked : Signal;

	public function ListHeader();

	public function SetListItemRenderer(newRenderer:String);

	public function SetLineStyle(thickness:Number, color:Number);

	public function SetListSize(height:Number, width:Number, forceLayout:Boolean);

	public function SetListItem(text:String, id:Number, width, forceLayout:Boolean);

	public function Layout();

	private function RendererRollOver(index:Number);

	private function RendererRollOut(index:Number);

	private function SortItems(index);

}