import com.Components.WindowComponentContent;
import com.GameInterface.BrowserImageMetadata;
import com.GameInterface.Browser.Browser;
import com.GameInterface.DistributedValue;
import com.Utils.ImageLoader;
import com.Utils.Signal;
import com.Utils.Colors;
import gfx.controls.UILoader;
import mx.utils.Delegate;
import flash.geom.Point;
intrinsic class GUI.WebBrowser.WebBrowserContent extends WindowComponentContent
{
	static private var REFRESH_MODE : String;
	static private var STOP_MODE : String;
	static private var SCROLL_AMOUNT : Number;
	static private var ADDRESS_STROKE_HIGHLIGHT : Number;
	static private var ADDRESS_STROKE_DEFAULT : Number;
	private var m_BackButton : MovieClip;
	private var m_ForwardButton : MovieClip;
	private var m_AddressBar : MovieClip;
	private var m_Loader : UILoader;
	private var m_Browser : Browser;
	private var m_CurrentAddress : String;
	private var m_History : Array;
	private var m_HistoryIndex : Number;
	private var m_MouseListener : Object;

	public function WebBrowser();

	private function configUI() : Void;

	private function onUnload() : Void;

	private function SlotLoadingPageStart(url:String) : Void;

	private function SlotLoadingPageComplete() : Void;

	private function ChangeHistoryIndex(index:Number) : Void;

	private function ToggleNavigationButtons() : Void;

	private function PositionAddressBar() : Void;

	private function SlotButtonSelected(target:Object) : Void;

	private function ToggleAddressBarButton(mode:String) : Void;

	private function AddressBarEnterKeyEventHandler() : Void;

	private function MouseWheelEventHandler(delta:Number) : Void;

	private function MouseMoveEventHandler() : Void;

	private function MouseDownEventHandler() : Void;

	private function MouseUpEventHandler() : Void;

	private function GetBrowserMouseLocation() : Point;

}