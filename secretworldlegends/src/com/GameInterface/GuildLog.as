import com.Utils.Signal;
intrinsic class com.GameInterface.GuildLog
{
	static public var SignalGuildLogUpdated : Signal;
	static public var m_LogRecords : Array;

	static public function GetTotalRecords() : Number;

	static public function RequestGuildLog(getBank:Boolean, getMembership:Boolean, getGovernment, sortDesc:Boolean, firstRow:Number, lastRow:Number) : Void;

	static public function GetRecord(recordIndex:Number) : Void;

}