import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.Friends
{
	static public var m_Friends : Array;
	static public var m_GuildFriends : Array;
	static public var m_IgnoredFriends : Array;
	static public var SignalFriendsUpdated : Signal;
	static public var SignalGuildUpdated : Signal;
	static public var SignalIgnoreListUpdated : Signal;

	static public function UpdateIgnoreList() : Void;

	static public function GetTotalFriends() : Number;

	static public function GetOnlineFriends() : Number;

	static public function GetTotalGuildMembers() : Number;

	static public function GetOnlineGuildMembers() : Number;

	static public function AddFriend(friendName:String) : Void;

	static public function RemoveFriend(friendName:String) : Void;

	static public function GetGuildName() : String;

	static public function InviteToGuildByName(memberName:String) : Void;

	static public function PromoteGuildMember(memberID:ID32) : Void;

	static public function DemoteGuildMember(memberID:ID32) : Void;

	static public function RemoveFromGuild(memberID:ID32) : Void;

	static public function Ignore(name:String) : Boolean;

	static public function Unignore(name:String) : Boolean;

	static public function InviteToGroup(memberID:ID32) : Void;

	static public function InviteToGroupByName(name:String) : Void;

	static public function KickFromGroup(memberID:ID32) : Void;

	static public function Tell(name:String, message:String) : Void;

	static public function MeetUp(memberID:ID32) : Void;

	static public function GetFriendDimension(friendID:ID32) : Number;

	static public function CanAddFriend(memberID:ID32) : Boolean;

	static public function CanRemoveFriend(memberID:ID32) : Boolean;

	static public function CanInviteToGuild(memberID:ID32) : Boolean;

	static public function CanPromote(memberID:ID32) : Boolean;

	static public function CanWithdrawFromBank(memberID:ID32) : Boolean;

	static public function CanDemote(memberID:ID32) : Boolean;

	static public function CanRemoveFromGuild(memberID:ID32) : Boolean;

	static public function CanIgnore(name:String) : Boolean;

	static public function CanUnignore(name:String) : Boolean;

	static public function CanInviteToGroup(memberID:ID32) : Boolean;

	static public function CanKickFromGroup(memberID:ID32) : Boolean;

}