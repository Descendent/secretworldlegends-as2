import com.Utils.Signal;
import com.GameInterface.Game.Character;
intrinsic class GUI.WorldDomination.Marker extends MovieClip
{
	static private var SELECT_LOCATION_SOUND_EFFECT : String;
	static public var m_SelectSound : Boolean;
	public var SignalMarkerSelected : Signal;
	public var m_Name : String;
	public var m_InZoneNotification : MovieClip;
	public var m_InQueueNotification : MovieClip;
	private var m_SelectHandler : Function;
	private var m_IsSelected : Boolean;
	private var m_IsDisabled : Boolean;
	private var m_Character : Character;

	public function get selectHandler() : Function;
	public function set selectHandler(value:Function) : Void;

	public function get selected() : Boolean;
	public function set selected(value:Boolean) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;


	public function Marker();

	private function RollOverEventHandler() : Void;

	private function RollOutEventHandler() : Void;

	private function MouseDownEventHandler() : Void;

	private function MouseUpEventHandler() : Void;

	private function OnEnterFrameEventHandlder() : Void;

}