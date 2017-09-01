import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.utils.Constraints;
import mx.utils.Delegate;
import com.Utils.Signal;
intrinsic class com.Components.Window extends UIComponent
{
	private var DRAG_PADDING : Number;
	private var _formType : String;
	private var _formSource : String;
	private var _formPadding : Number;
	private var _title : String;
	private var _allowResize : Boolean;
	private var constraints : Constraints;
	private var dragProps : Array;
	private var formCreated : Boolean;
	private var loader : MovieClipLoader;
	private var _minWidth : Number;
	private var _maxWidth : Number;
	private var _minHeight : Number;
	private var _maxHeight : Number;
	public var SignalFormLoaded : Signal;
	private var hitArea : MovieClip;
	private var titleTextField : TextField;
	public var closeButton : Button;
	private var background : MovieClip;
	private var hit : MovieClip;
	private var form : UIComponent;
	private var m_Footer : MovieClip;
	private var m_Stroke : MovieClip;

	public function get title() : String;
	public function set title(value:String) : Void;

	public function get allowResize() : Boolean;
	public function set allowResize(value:Boolean) : Void;


	public function Window();

	public function toString() : String;

	private function configUI() : Void;

	private function draw() : Void;

	private function onLoadComplete() : Void;

	private function layout() : Void;

	public function dragStartHandler();

	public function dragStopHandler();

	public function handleResizeDragStart();

	public function handleResizeDragStop();

	public function handleResize();

}