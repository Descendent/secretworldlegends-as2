import com.Utils.GlobalSignal;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.Utils.Signal;
import com.GameInterface.ProjectUtils;
import GUI.WorldDomination.MiniMapReward;
import mx.utils.Delegate;
intrinsic class GUI.WorldDomination.MiniMap extends MovieClip
{
	static public var MAP_STATE : Number;
	static public var REWARDS_STATE : Number;
	static public var MAP : String;
	static public var REWARDS : String;
	static private var EL_DORADO : String;
	static private var STONEHENGE : String;
	static private var FUSANG_PROJECTS : String;
	static private var SHAMBALA : String;
	static private var MAP_BUTTONS_GAP : Number;
	static private var SCROLL_WHEEL_SPEED : Number;
	public var SignalStateChanged : Signal;
	private var m_Mask : MovieClip;
	private var m_MiniMapsContainer : MovieClip;
	private var m_ElDoradoMiniMap : MovieClip;
	private var m_StonehengeMiniMap : MovieClip;
	private var m_FusangProjectsMiniMap : MovieClip;
	private var m_ShambalaMiniMap : MovieClip;
	private var m_ButtonBar : MovieClip;
	private var m_TabButtonArray : Array;
	private var m_Playfield : String;
	private var m_State : Number;
	private var m_RewardsScrollContainer : MovieClip;
	private var m_RewardsContainer : MovieClip;
	private var m_ElDoradoRewards : Array;
	private var m_StonehengeRewards : Array;
	private var m_FusangProjectsRewards : Array;
	private var m_ShambalaRewards : Array;
	private var m_ScrollBarContainer : MovieClip;
	private var m_ScrollTrack : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_ScrollBarPosition : Number;
	private var m_PlayfieldArray : Array;

	public function get playfield() : String;
	public function set playfield(playfieldName:String) : Void;

	public function get state() : Number;
	public function set state(state:Number) : Void;


	public function MiniMap();

	private function Init() : Void;

	private function CreateRewardsArrays() : Void;

	private function CreateRewardsContainer() : Void;

	private function CreateScrollBar() : Void;

	private function UpdateRewards() : Void;

	private function SelectedTabBarEventHandler(event:Object) : Void;

	private function UpdateScrollBar() : Void;

	private function OnScrollbarUpdate(event:Object) : Void;

	private function MouseWheelEventHandler(delta:Number) : Void;

}