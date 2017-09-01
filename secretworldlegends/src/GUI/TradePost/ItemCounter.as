import com.Utils.Colors;
import gfx.core.UIComponent;
import gfx.controls.TextInput;
import gfx.controls.Button;
intrinsic class GUI.TradePost.ItemCounter extends UIComponent
{
	static public var MAX_VALUE : Number;
	static private var ON_COLOR : Number;
	static private var OFF_COLOR : Number;
	static private var STARTING_INTERVAL : Number;
	static private var MINIMUM_INTERVAL : Number;
	static private var STEP_INTERVAL : Number;
	public var SignalValueChanged : com.Utils.Signal;
	public var m_TextInput : TextInput;
	private var m_Icon : MovieClip;
	private var m_IconName : String;
	private var m_Amount : Number;
	private var m_UpArrow : Button;
	private var m_DownArrow : Button;
	private var m_Background : MovieClip;
	private var m_MaxAmount : Number;
	private var m_MinAmount : Number;
	private var m_Interval : Number;
	private var m_IntervalDelay : Number;
	private var m_IntervalTarget : MovieClip;
	private var m_IsDisabled : Boolean;

	public function get icon() : String;
	public function set icon(value:String) : Void;

	public function get amount() : Number;
	public function set amount(value:Number) : Void;

	public function get maxAmount() : Number;
	public function set maxAmount(value:Number) : Void;

	public function get minAmount() : Number;
	public function set minAmount(value:Number) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;


	public function ItemCounter();

	private function configUI() : Void;

	private function TextChangedEventHandler() : Void;

	private function ArrowMouseDownEventHandler(event:Object) : Void;

	private function ArrowClickEventHandler(event:Object) : Void;

	private function DecreaseInterval(scope:Object) : Void;

	public function ShowBackground(show:Boolean) : Void;

	public function TakeFocus() : Void;

}