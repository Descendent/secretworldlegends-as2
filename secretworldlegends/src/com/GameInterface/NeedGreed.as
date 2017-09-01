import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.NeedGreed
{
	static public var CloseNonModuleControlledGui : Signal;
	static public var SignalNeedGreedForItemFromClientChar : Signal;
	static public var SignalCloseNeedGreedWindows : Signal;
	static public var SignalPassOnAllNeedGreeds : Signal;
	static public var SignalCreateNeedGreedWindow : Signal;
	static public var SignalCanChangeLootOptionsChanged : Signal;
	static public var SignalLootModeChanged : Signal;
	static public var SignalNeedGreedChanged : Signal;
	static public var SignalLootThresholdChanged : Signal;
	static public var SignalItemOffered : Signal;

	static public function Need(lootBagId:ID32, itemPos:Number) : Void;

	static public function Greed(lootBagId:ID32, itemPos:Number) : Void;

	static public function Pass(lootBagId:ID32, itemPos:Number) : Void;

	static public function AcceptMasterLooterItem(lootBagId:ID32, itemPos:Number, acceptItem:Boolean) : Void;

	static public function SetLootOptions(lootMode:Number, needGreed:Boolean, lootThreshold:Number) : Void;

	static public function GetCanChangeLootOptions() : Boolean;

	static public function IsMasterLooter(characterId:ID32) : Boolean;

	static public function GetLootMode() : Number;

	static public function GetNeedGreed() : Boolean;

	static public function GetLootThreshold() : Number;

}