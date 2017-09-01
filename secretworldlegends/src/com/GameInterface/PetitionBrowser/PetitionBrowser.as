import flash.external.*;
import com.Utils.*;
import com.GameInterface.Utils.*;
import com.GameInterface.Tooltip.*;
intrinsic class com.GameInterface.PetitionBrowser.PetitionBrowser
{
	public var SignalBrowserShowPage : Signal;
	public var SignalAdjustXY : Signal;

	public function OpenBrowser() : Boolean;

	public function MouseMove(x:Number, y:Number) : Number;

}