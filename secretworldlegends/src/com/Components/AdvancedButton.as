import com.Utils.Signal;
intrinsic class com.Components.AdvancedButton extends MovieClip
{
	public var SignalButtonSelected : Signal;
	private var m_Name : String;
	private var m_IsToggle : Boolean;
	private var m_IsSelected : Boolean;
	private var m_IsDisabled : Boolean;
	private var m_IsHammered : Boolean;

	public function get name() : String;
	public function set name(value:String) : Void;

	public function get toggle() : Boolean;
	public function set toggle(value:Boolean) : Void;

	public function get selected() : Boolean;
	public function set selected(value:Boolean) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;


	public function AdvancedButton();

	private function RollOverEventHandler() : Void;

	private function RollOutEventHandler() : Void;

	private function PressEventHandler() : Void;

	private function ReleaseEventHandler() : Void;

	private function ReleaseOutsideEventHandler() : Void;

	private function OnEnterFrameEventHandlder() : Void;

}