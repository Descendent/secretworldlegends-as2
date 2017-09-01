import com.Utils.Signal;
intrinsic dynamic class com.Utils.DragObject
{
	public var SignalDroppedOnDesktop : Signal;
	public var SignalDragHandled : Signal;
	private var m_DragClip : MovieClip;
	static private var s_CurrentDragObject : Object;

	public function DragObject();

	public function SetDragClip(dragClip:MovieClip);

	public function GetDragClip() : MovieClip;

	public function DragHandled();

	static public function onDragEnd();

	static private function SlotDroppedToDesktop();

	static public function GetCurrentDragObject() : DragObject;

}