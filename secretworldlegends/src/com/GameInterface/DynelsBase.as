intrinsic class com.GameInterface.DynelsBase
{
	static public function RegisterProperty(type:Number, instance:Number, enum:Number) : Object;

	static public function UnregisterProperty(type:Number, instance:Number, enum:Number) : Void;

	static public function SetTarget(slot:Number);

	static public function RefreshBuffs(slot:Number);

	static public function Trade(id:com.Utils.ID32);

	static public function InviteToGuild(id:com.Utils.ID32);

	static public function PromoteGuildMember(id:com.Utils.ID32);

	static public function DemoteGuildMember(id:com.Utils.ID32);

}