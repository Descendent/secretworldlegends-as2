import flash.geom.Point;
import gfx.core.UIComponent;
import com.Components.WindowComponentContent;
import gfx.controls.Button;
import flash.geom.Rectangle;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.CharacterBase;
intrinsic class com.Components.WinComp extends UIComponent
{
	static private var DRAG_PADDING : Number;
	public var SignalClose : Signal;
	public var SignalHelp : Signal;
	public var SignalSizeChanged : Signal;
	public var SignalSelected : Signal;
	public var SignalContentLoaded : Signal;
	public var m_CloseButton : MovieClip;
	public var m_HelpButton : MovieClip;
	private var m_Title : TextField;
	private var m_Content : WindowComponentContent;
	private var m_ResizeButton : MovieClip;
	private var m_Stroke : MovieClip;
	private var m_Background : MovieClip;
	private var m_DropShadow : MovieClip;
	private var m_MinHeight : Number;
	private var m_MinWidth : Number;
	private var m_MaxHeight : Number;
	private var m_MaxWidth : Number;
	private var m_ResizeListener : Object;
	private var m_ResizeX : Number;
	private var m_ResizeY : Number;
	private var m_Padding : Number;
	private var m_NonContentHeight : Number;
	private var m_ResizeSensitivity : Number;
	private var m_IsDraggable : Boolean;
	private var m_ShowCloseButton : Boolean;
	private var m_ShowHelpButton : Boolean;
	private var m_ShowStroke : Boolean;
	private var m_ShowFooter : Boolean;
	private var m_ShowResize : Boolean;

	public function WinComp();

	private function configUI() : Void;

	public function Layout() : Void;

	public function ShowCloseButton(value:Boolean) : Void;

	public function ShowHelpButton(value:Boolean) : Void;

	public function ShowResizeButton(value:Boolean) : Void;

	public function ShowStroke(value:Boolean) : Void;

	public function ShowFooter(value:Boolean) : Void;

	private function CloseButtonHandler() : Void;

	private function HelpButtonHandler() : Void;

	private function ResizeDragHandler() : Void;

	private function MouseResizeMovingHandler() : Void;

	private function ResizeDragReleaseHandler() : Void;

	private function MoveDragHandler() : Void;

	private function MoveDragReleaseHandler() : Void;

	public function SetSize(width:Number, height:Number) : Void;

	public function SetTitle(title:String, alignment:String) : Void;

	public function GetTitle() : String;

	public function SetPadding(value:Number) : Void;

	public function GetPadding() : Number;

	public function SetContent(value:String) : Void;

	public function GetContent() : WindowComponentContent;

	public function SlotContentLoaded();

	public function SetMaxWidth(width:Number);

	public function SetMaxHeight(height:Number);

	public function SetMinWidth(width:Number) : Void;

	public function SetMinHeight(height:Number) : Void;

	public function SetDraggable(value:Boolean) : Void;

	public function GetDraggable() : Boolean;

	public function GetSize() : Point;

	public function GetNonContentSize() : Point;

}