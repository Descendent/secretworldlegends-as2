import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.LoreBase
{
	static public var SignalTagAdded : Signal;
	static public var SignalTagRemoved : Signal;
	static public var SignalCounterUpdated : Signal;
	static public var SignalGetAnimationComplete : Signal;
	static public var SignalTagsReceived : Signal;

	static public function GetHeaderNodeId() : Number;

	static public function GetTagChildrenIdArray(tagId:Number, tagType:Number) : Array;

	static public function GetTagType(tagId:Number) : Number;

	static public function GetTagParent(tagId:Number) : Number;

	static public function GetTagText(tagId:Number) : String;

	static public function GetTagName(tagId:Number) : String;

	static public function GetTagViewpoint(tagId:Number) : Number;

	static public function GetTagMountType(tagId:Number) : Number;

	static public function GetTagTeleportLockout(tagId:Number) : Number;

	static public function IsVisible(tagId:Number) : Boolean;

	static public function IsValidId(tagId:Number) : Boolean;

	static public function IsNew(tagId:Number) : Boolean;

	static public function MarkAllOld() : Void;

	static public function IsLocked(tagId:Number) : Boolean;

	static public function IsLockedForChar(tagId:Number, charId:ID32) : Boolean;

	static public function HasCounter(tagId:Number) : Boolean;

	static public function HasPlayerFaction(tagId:Number) : Boolean;

	static public function GetIcon(tagId:Number) : Number;

	static public function GetIcon2(tagId:Number) : Number;

	static public function GetBackgroundGradientFrom(tagId:Number) : String;

	static public function GetBackgroundGradientTo(tagId:Number) : String;

	static public function GetForegroundGradientFrom(tagId:Number) : String;

	static public function GetForegroundGradientTo(tagId:Number) : String;

	static public function GetCounterStat(tagId:Number) : Number;

	static public function GetCounterCurrentValue(tagId:Number) : Number;

	static public function OpenTag(tagId:Number) : Void;

	static public function GetRequiredQuest(tagId:Number) : Number;

	static public function GetCounterTargetValue(tagId:Number) : Number;

	static public function GetRank(tagId:Number) : Number;

	static public function GetMediaId(tagId:Number, mediaType:Number) : Number;

	static public function GetRewardIdArray(tagId:Number, rewardType:Number) : Array;

	static public function GetPointsValue(tagId:Number) : Number;

	static public function SetSelectedTag(tagId:Number) : Void;

	static public function OpenTagOnce(tagId:Number) : Void;

	static public function IsPlayingTagSound() : Boolean;

	static public function LoadTagSound(tagId:Number) : Boolean;

	static public function PlayTagSound(tagId:Number) : Void;

	static public function PauseTagSound() : Void;

	static public function StopTagSound() : Void;

}