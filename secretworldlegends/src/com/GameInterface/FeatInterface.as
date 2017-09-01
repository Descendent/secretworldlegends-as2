import com.Utils.Signal;
intrinsic class com.GameInterface.FeatInterface
{
	static public var m_FeatList : Object;
	static public var SignalFeatTrained : Signal;
	static public var SignalFeatsUntrained : Signal;
	static public var SignalOpenTrainFeatGUI : Signal;
	static public var SignalCloseTrainFeatGUI : Signal;
	static public var SignalFeatListRebuilt : Signal;

	static public function TrainFeat(featId:Number) : Boolean;

	static public function RefundFeat(featId:Number) : Boolean;

	static public function BuildFeatList() : Void;

}