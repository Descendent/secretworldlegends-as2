import mx.utils.Delegate;
import com.Utils.Colors;
import com.Utils.Signal;
intrinsic class GUI.TradePost.Views.SortButton extends MovieClip
{
	static public var ASSENDING : String;
	static public var DESCENDING : String;
	static private var ON_COLOR : Number;
	static private var OFF_COLOR : Number;
	public var SignalSortItems : Signal;
	private var m_Name : String;
	private var m_TopButton : MovieClip;
	private var m_BottomButton : MovieClip;
	private var m_Direction : String;
	private var m_IsDisabled : Boolean;

	public function get name() : String;
	public function set name(value:String) : Void;

	public function get direction() : String;
	public function set direction(value:String) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;


	public function SortButton();

	private function onLoad() : Void;

	private function ReleaseEventHandler() : Void;

}