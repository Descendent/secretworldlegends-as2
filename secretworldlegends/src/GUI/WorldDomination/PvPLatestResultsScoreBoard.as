import com.Utils.LDBFormat;
import GUI.WorldDomination.MiniMapReward;
import com.Components.BuffComponent;
import com.GameInterface.Game.BuffData;
import com.GameInterface.Spell;
import com.GameInterface.Tooltip.TooltipInterface;
intrinsic class GUI.WorldDomination.PvPLatestResultsScoreBoard extends MovieClip
{
	static private var WIN : String;
	static private var WINS : String;
	static private var BUFF_SCALE : Number;
	static private var BUFF_GAP : Number;
	static private var BUFF_VERTICAL_MODIFICATION : Number;
	static private var BUFF_INITIAL_POSITION : Number;
	private var m_IlluminatiIcon : MovieClip;
	private var m_DragonIcon : MovieClip;
	private var m_TemplarsIcon : MovieClip;
	private var m_ScoreBoardLabel : TextField;
	private var m_BuffsContainer : MovieClip;
	private var m_FactionIconsArray : Array;
	private var m_BuffClipsArray : Array;

	public function PvPLatestResultsScoreBoard();

	private function Init() : Void;

	public function SetFaction(faction:Number) : Void;

	public function SetWins(wins:Number) : Void;

	public function SetBuffs(buffs:Array) : Void;

	private function ClearBuffs() : Void;

}