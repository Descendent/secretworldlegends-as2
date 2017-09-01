import com.Utils.Colors;
import com.Utils.ID32;
import com.Utils.Format;
import GUI.PvPScoreboard.PvPScoreboardColors;
import GUI.PvPScoreboard.PvPScoreboardContent;
import com.GameInterface.PvPScoreboard;
intrinsic class GUI.PvPScoreboard.TableRow extends MovieClip
{
	static public var DRAGON_ICON_CLIP_NAME : String;
	static public var TEMPLARS_ICON_CLIP_NAME : String;
	static public var ILLUMINATI_ICON_CLIP_NAME : String;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;
	static private var FACTION_HEADER_HEIGHT : Number;
	private var m_TableRowHeader : MovieClip;
	private var m_Rank : MovieClip;
	private var m_PlayerName : MovieClip;
	private var m_Role : MovieClip;
	private var m_BattleRank : MovieClip;
	private var m_Damage : MovieClip;
	private var m_Healing : MovieClip;
	private var m_CrowdControl : MovieClip;
	private var m_DamageTaken : MovieClip;
	private var m_Kills : MovieClip;
	private var m_Death : MovieClip;
	private var m_DynamicPoints : MovieClip;
	private var m_Points : MovieClip;
	private var m_FieldsArray : Array;

	public function TableRow();

	public function SetFactionHeader(faction:Number) : Void;

	public function SetRowColors(faction:Number, sortTarget:String, isPlayer:Boolean) : Void;

	public function SetRankIcon(faction:Number) : Void;

	public function SetRoleIcon(role:Number) : Void;

	public function SetBattleRankIcon() : Void;

	private function SetIcon(iconInstance:Number, targetContainer:MovieClip, scale:Number, xPosition:Number, yPosition:Number) : Void;

}