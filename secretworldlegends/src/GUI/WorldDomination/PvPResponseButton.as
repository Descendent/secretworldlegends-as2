intrinsic class GUI.WorldDomination.PvPResponseButton extends MovieClip
{
	static private var UNSELECTED_FRAME : Number;
	static private var SELECTED_FRAME : Number;
	private var m_IsSelected : Boolean;
	private var m_Label : TextField;
	private var m_IsDisabled : Boolean;

	public function get selected() : Boolean;
	public function set selected(value:Boolean) : Void;

	public function get disabled() : Boolean;
	public function set disabled(value:Boolean) : Void;


	public function PvPResponseButton();

	private function RollOverEventHandler() : Void;

	private function RollOutEventHandler() : Void;

	private function MouseDownEventHandler() : Void;

	private function MouseUpEventHandler() : Void;

	private function OnEnterFrameEventHandlder() : Void;

	public function SetLabel(value:String, selected:Boolean, textColor:Number) : Void;

}