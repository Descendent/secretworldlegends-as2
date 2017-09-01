import com.Utils.Colors;
import GUI.PvPScoreboard.TableRow;
import GUI.PvPScoreboard.Header;
import com.Utils.Faction;
import com.Utils.ID32;
import com.Utils.Format;
import com.Utils.LDBFormat;
import GUI.PvPScoreboard.PvPScoreboardContent;
import com.GameInterface.PvPScoreboard;
intrinsic class GUI.PvPScoreboard.TableRowHeader extends MovieClip
{
	static private var DRAGON_FONT_SIZE : Number;
	static private var TEMPLARS_FONT_SIZE : Number;
	static private var ILLUMINATI_FONT_SIZE : Number;
	static private var DRAGON_LABEL_Y : Number;
	static private var TEMPLARS_LABEL_Y : Number;
	static private var ILLUMINATI_LABEL_Y : Number;
	static private var LABEL_COLOR : Number;
	static private var LABEL_X : Number;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;
	private var m_FactionIconContainer : MovieClip;
	private var m_Label : TextField;
	private var m_Background : MovieClip;

	public function TableRowHeader();

	public function SetupHeader(faction:Number, iconClipName:String, backgroundColor:Number) : Void;

}