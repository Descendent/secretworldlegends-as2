import com.Utils.LDBFormat;
import com.Utils.Faction;
import flash.geom.Matrix;
import GUI.PvPScoreboard.PvPScoreboardColors;
import com.GameInterface.PvPScoreboard;
intrinsic class GUI.PvPScoreboard.Header extends MovieClip
{
	static public var DRAGON_FONT : String;
	static public var TEMPLARS_FONT : String;
	static public var ILLUMINATI_FONT : String;
	static public var STANDARD_FONT : String;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;
	static private var WINNING_FACTION : String;
	static private var WINNING_SQUAD : String;
	static private var TIED_SCORE : String;
	static private var BACKGROUND_WIDTH : Number;
	static private var BACKGROUND_HEIGHT : Number;
	static private var WINNER_IS_FONT_SIZE : Number;
	static private var FACTION_FONT_SIZE : Number;
	static private var FACTION_LABEL_Y : Number;
	static private var LABEL_COLOR : Number;
	static private var LABEL_X : Number;
	static private var WINNER_IS_LABEL_Y : Object;
	static private var TIED_IS_LABEL_Y : Object;
	static private var FACTION_SCORE_GAP : Number;
	private var m_BackgroundGradient : MovieClip;
	private var m_BackgroundAnimationsContainer : MovieClip;
	private var m_AnimationLoader : MovieClip;
	private var m_AnimationMask : MovieClip;
	private var m_TiedScore : TextField;
	private var m_WinnerIsLabel : TextField;
	private var m_FactionLabel : TextField;
	private var m_FactionScore_1 : MovieClip;
	private var m_FactionScore_2 : MovieClip;
	private var m_FactionScore_3 : MovieClip;
	private var m_Color : Number;

	public function Header();

	public function SetResults(factionPlacement:Array, factionScores:Array) : Void;

	private function CreateBackground(color:Number) : Void;

	private function InitHeaderAnimation() : Void;

	private function onLoadComplete(target:MovieClip) : Void;

}