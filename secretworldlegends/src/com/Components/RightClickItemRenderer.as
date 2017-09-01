import com.Components.RightClickItem;
import com.Utils.Signal;
intrinsic class com.Components.RightClickItemRenderer extends MovieClip
{
	public var SignalRightClickItemSelect : Signal;
	public var m_Background : MovieClip;
	public var m_Separator : MovieClip;
	private var m_Label : TextField;
	private var m_RightClickItem : RightClickItem;

	public function RightClickItemRenderer();

	private function RollOverEventHandler() : Void;

	private function RollOutEventHandler() : Void;

	private function MouseDownEventHandler() : Void;

	private function MouseUpEventHandler() : Void;

	public function GetRightClickItem() : RightClickItem;

	public function SetRightClickItem(rightClickItem:RightClickItem);

}