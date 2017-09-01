import com.GameInterface.Game.BuffData;
import com.GameInterface.Spell;
import com.GameInterface.Tooltip.TooltipInterface;
import com.Utils.Format;
import com.Utils.ID32;
import com.Utils.LDBFormat;
intrinsic class GUI.WorldDomination.MiniMapReward extends MovieClip
{
	static public var BUFF : String;
	static public var TOKEN : String;
	static public var MARK_OF_PANTHEON : Number;
	static public var SHAMBALA_REWARD_CACHE : Number;
	static private var FACTION_BUFF : String;
	static private var PANTHEON_MARKS : String;
	static private var SHAMBALA_REWARD_CACHE_TEXT : Object;
	static private var PVP_TOKEN : String;
	static private var PVP_SPOILS : String;
	private var m_Icon : MovieClip;
	private var m_Title : TextField;
	private var m_SubTitle : TextField;

	static public function GetCouncilSupportBuffSpellID(faction:Number) : Number;

	static public function GetCustodianBuffSpellID(faction:Number) : Number;

	public function MiniMapReward();

	public function SetReward(rewardType:String, rewardID:Number) : Void;

}