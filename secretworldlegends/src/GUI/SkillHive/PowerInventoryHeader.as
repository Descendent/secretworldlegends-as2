import gfx.controls.Label;
import com.Utils.Signal;
import mx.utils.Delegate;
import mx.controls.streamingmedia.StreamingMediaConstants;
intrinsic class GUI.SkillHive.PowerInventoryHeader
{
	private var m_HeaderID : Number;
	private var m_Direction : Number;
	private var m_Label : Label;
	private var m_SortArrow : MovieClip;
	public var SignalSort : Signal;

	public function PowerInventoryHeader(headerID:Number, name:String, label:Label, sortArrow:MovieClip);

	private function SlotSort();

	public function SetDirection(direction:Number);

	public function GetDirection();

	public function GetHeaderID();

}