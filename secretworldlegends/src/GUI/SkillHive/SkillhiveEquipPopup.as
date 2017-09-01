import com.Utils.Signal;
import flash.geom.ColorTransform;
import flash.geom.Transform;
import com.Utils.Colors;
intrinsic dynamic class GUI.SkillHive.SkillhiveEquipPopup extends MovieClip
{
	static private var m_NumButtons : Number;
	public var SignalEquipButtonRollOver : Object;
	public var SignalEquipButtonRollOut : Object;
	public var SignalEquipButtonPressed : Object;
	private var m_HoveredButtonIdx : Object;
	private var m_ColorArray : Array;
	private var m_Stroke : MovieClip;

	public function SkillhiveEquipPopup();

	public function SetNumButtons(numButtons:Number);

	private function onPress() : Void;

	private function RollOut(buttonId) : Void;

	private function RollOver(buttonId) : Void;

	private function onMouseMove() : Void;

	private function onMouseUp();

	public function SetColors(colorArray:Array) : Void;

	public function SetStrokePosition(itemPosition:Number) : Void;

}