intrinsic class com.GameInterface.ClientServerPerfTracker
{
	static public var SignalLatencyUpdated : com.Utils.Signal;
	static public var SignalClientFramerateUpdated : com.Utils.Signal;
	static public var SignalServerFramerateUpdated : com.Utils.Signal;

	static public function GetLatency() : Number;

	static public function GetClientFramerate() : Number;

	static public function GetServerFramerate() : Number;

	static public function GetTotalRemainingDownloads() : Number;

	static public function GetDownloadSecondsRemaining() : Number;

}