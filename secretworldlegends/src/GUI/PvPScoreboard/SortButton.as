import mx.utils.Delegate;
import com.Utils.Colors;
import com.Utils.Signal;
intrinsic class GUI.PvPScoreboard.SortButton extends MovieClip
{
	static public var ASSENDING : String;
	static public var DESCENDING : String;
	static private var HIGHLIGHT_COLOR : Number;
	static private var PRE_HIGHLIGHT_COLOR : Number;
	static private var DEFAULT_COLOR : Number;
	public var SignalSortItems : Signal;
	private var m_TopButton : MovieClip;
	private var m_BottomButton : MovieClip;
	private var m_Background : MovieClip;
	private var m_Name : String;
	private var m_Direction : String;
	private var m_IsSelected : Boolean;

	public function get name() : String;
	public function set name(value:String) : Void;

	public function get direction() : String;
	public function set direction(value:String) : Void;


	public function SortButton();

	private function onLoad() : Void;

	private function PressEventHandler() : Void;

	private function ReleaseEventHandler() : Void;

	private function ReleaseOutsideEventHandler() : Void;

	public function ActivateDisplay(direction:String) : Void;

	public function Deselect() : Void;

}