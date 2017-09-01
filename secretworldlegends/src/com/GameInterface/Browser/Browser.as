import flash.external.*;
import com.Utils.Signal;
import com.GameInterface.Utils.*;
import com.GameInterface.Tooltip.*;
intrinsic class com.GameInterface.Browser.Browser
{
	public var SignalStartLoadingURL : Signal;
	public var SignalBrowserShowPage : Signal;
	public var SignalAdjustXY : Signal;

	static public function IsBrowserActive() : Boolean;

	public function Browser(browserState:Number, width:Number, height:Number);

	public function CloseBrowser() : Void;

	public function GetBrowserState() : Number;

	public function GetBrowserName() : String;

	public function OpenURL(url:String) : Void;

	public function OpenFacebookURL() : Void;

	public function Stop() : Void;

	public function MouseMove(x:Number, y:Number) : Number;

}