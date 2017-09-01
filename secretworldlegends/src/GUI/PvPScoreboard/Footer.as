import com.Utils.LDBFormat;
import GUI.PvPScoreboard.AnimaFragment;
import com.GameInterface.Game.Character;
import com.Utils.Signal;
import GUI.PvPScoreboard.Table;
import com.GameInterface.PvPMinigame.PvPMinigame;
import com.GameInterface.PvPScoreboard;
import com.GameInterface.DistributedValue;
import com.GameInterface.Utils;
intrinsic class GUI.PvPScoreboard.Footer extends MovieClip
{
	static private var SORT_BY : String;
	static private var FACTION : String;
	static private var SQUAD : String;
	static private var ALL : String;
	static private var REWARDS : String;
	static private var SHORT_GAME : String;
	static private var CLOSE : String;
	static private var EL_DORADO : String;
	static private var STONEHENGE : String;
	static private var DEFAULT_GAP : Number;
	static private var DEFAULT_RADIO_BUTTON_WIDTH : Number;
	static private var SORT_RADIO_GROUP : String;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;
	static private var MODIFIER_NONE : Object;
	static private var MODIFIER_SHORTGAME : Object;
	public var SignalSortTypeSelected : Signal;
	public var SignalCloseWindow : Signal;
	private var m_Character : Character;
	private var m_Background : MovieClip;
	private var m_SortByTextField : TextField;
	private var m_FactionRadioButton : MovieClip;
	private var m_AllRadioButton : MovieClip;
	private var m_RewardsTextField : TextField;
	private var m_MajorAnimaFragment : MovieClip;
	private var m_MinorAnimaFragment : MovieClip;
	private var m_CloseButton : MovieClip;
	private var m_CheckInterval : Number;

	public function Footer();

	private function Init() : Void;

	public function RefreshData() : Void;

	private function RemoveFocusEventHandler() : Void;

	private function InitComponents(scope:Object) : Void;

	private function Layout() : Void;

	private function CloseButtonClickHandler() : Void;

	private function GetCharactersRole() : Number;

	private function RadioButtonClickHandler(event:Object) : Void;

	public function SetRewards(majorAnimaAmount:Number, minorAnimaAmount:Number, gameModifier:Number) : Void;

}