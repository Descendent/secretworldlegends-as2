import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Utils.Format;
import com.GameInterface.Tooltip.*;
intrinsic class GUI.WorldDomination.FvFResultsTokenDistribution extends MovieClip
{
	static private var FACTION_REWARDS_DISTRIBUTION : String;
	static private var REWARDS_DISTRIBUTION_TOOLTIP : String;
	static public var MINOR_ANIMA_FRAGMENT : Number;
	private var m_TitleTextField : TextField;
	private var m_TimeTextField : TextField;

	public function FvFResultsTokenDistribution();

	private function onLoad() : Void;

	public function UpdateLabel(remainingTime:String) : Void;

}