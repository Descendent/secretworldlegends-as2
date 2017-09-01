import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.Nametags
{
	static public var SignalNametagAdded : Signal;
	static public var SignalNametagRemoved : Signal;
	static public var SignalNametagUpdated : Signal;
	static public var SignalNametagAggroUpdated : Signal;
	static public var SignalAllNametagsRemoved : Signal;
	static public var SignalNametagAddedToHatelist : Signal;
	static public var SignalNametagRemovedFromHatelist : Signal;

	static public function RefreshNametags();

	static public function GetAggroStanding(identity:ID32) : Number;

}