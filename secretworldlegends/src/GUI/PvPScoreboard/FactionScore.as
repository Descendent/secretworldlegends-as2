import com.Utils.Colors;
import com.Utils.ID32;
import com.Utils.Format;
import GUI.PvPScoreboard.PvPScoreboardColors;
import GUI.PvPScoreboard.PvPScoreboardContent;
import com.GameInterface.PvPScoreboard;
intrinsic class GUI.PvPScoreboard.FactionScore extends MovieClip
{
	public var m_Faction : Number;
	public var m_Score : String;
	private var m_Label : TextField;
	private var m_FactionIconContainer : MovieClip;
	private var m_Background : MovieClip;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;

	public function FactionScore();

	private function SetFactionAndScore(faction:Number, score:String) : Void;

}