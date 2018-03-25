import com.Utils.Signal;
intrinsic class com.GameInterface.NewsBase
{
	public var SignalNewsConfigLoaded : Signal;
	public var SignalNewsConfigFailed : Signal;
	public var SignalNewsNodeAdded : Signal;
	public var SignalNewsNodeImageDownloaded : Signal;
	public var SignalNewsNodeImageFailed : Signal;
	public var SignalEngageNodeAdded : Signal;
	public var SignalEngageDownloadFailed : Signal;

	public function NewsBase();

	public function LoadNews() : Void;

	public function LoadEngage(url:String) : Void;

	public function OpenBrowser(url:String) : Void;

}