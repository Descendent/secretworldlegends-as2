import gfx.core.UIComponent;
import gfx.controls.Button;
import flash.geom.Rectangle;
import mx.utils.Delegate;
import com.Utils.Signal;
intrinsic class com.Components.WindowComponent extends UIComponent
{
	private var m_Size : Rectangle;
	private var m_ContentSize : Rectangle;
	private var m_ResizeButton : MovieClip;
	private var m_Background : MovieClip;
	public var m_Content : MovieClip;
	private var m_CloseButton : MovieClip;
	private var m_MinHeight : Number;
	private var m_MinWidth : Number;
	private var m_TmpHeigth : Number;
	private var m_TmpWidth : Number;
	private var m_ResizeListener : Object;
	private var m_MoveListener : Object;
	private var TOP : Number;
	private var RIGHT : Number;
	private var BOTTOM : Number;
	private var LEFT : Number;
	private var m_Padding : Array;
	private var m_ResizeSensitivity : Number;
	private var m_Title : TextField;
	public var SignalClose : Signal;
	public var SignalSizeChanged : Signal;

	public function WindowComponent();

	private function configUI() : Void;

	public function GetSize() : Rectangle;

	public function SetSize(newSize:Rectangle) : Void;

	public function GetContentSize() : Rectangle;

	public function SetResizeSensitivity(sensitivity:Number) : Void;

	private function UpdateContentSize();

	public function SetPadding(top:Number, right:Number, bottom:Number, left:Number);

	public function SetTitle(title:String) : Void;

	public function SetMinWidth(width:Number) : Void;

	public function SetMinHeight(height:Number) : Void;

	private function ResizeDrag();

	private function ResizeDragRelease();

	private function MoveDrag();

	private function MoveDragRelease();

	private function MouseDragMoving();

	private function MouseResizeMoving();

	public function Layout();

	private function CloseButtonHandler();

}