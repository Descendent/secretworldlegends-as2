import com.Utils.Signal;
intrinsic class com.GameInterface.Claim
{
	static public var m_Claims : Array;
	static public var SignalClaimsUpdated : Signal;
	static public var SignalRewardClaimed : Signal;
	static public var SignalRewardsUpdated : Signal;

	static public function ClaimAllItems() : Boolean;

	static public function ClaimLinkedItems() : Boolean;

	static public function LinkedItemsAvailable() : Boolean;

	static public function ClaimSteamItems() : Boolean;

	static public function SteamItemsAvailable() : Boolean;

	static public function ClaimItem(ClaimItemId:Number) : Boolean;

	static public function DeleteClaimItem(ClaimItemId:Number) : Void;

	static public function MarkAllAsOld() : Void;

	static public function GetNumRewardTracks() : Number;

	static public function GetRewardTrackLength(TrackNum:Number) : Number;

	static public function GetRewardTrackPos(TrackNum:Number) : Number;

	static public function GetReward(TrackNum:Number, TrackPos:Number) : Array;

	static public function RewardAvailable(TrackNum:Number) : Boolean;

	static public function ClaimReward(TrackNum:Number) : Void;

}