import com.GameInterface.Game.Character;
import com.Components.RightClickItemRenderer;
import com.Utils.Signal;
intrinsic dynamic class com.Components.RightClickMenu extends MovieClip
{
	static private var ITEM_CONTAINER_OFFSET : Number;
	static private var BACKGROUND_FILL_OFFSET : Number;
	private var m_Width : Number;
	private var m_DataProvider : Array;
	private var m_ItemsContainer : MovieClip;
	private var m_Stroke : MovieClip;
	private var m_Fill : MovieClip;
	private var m_HandleClose : Boolean;
	public var SignalWantToClose : Signal;

	public function get width() : Number;
	public function set width(value:Number) : Void;

	public function get dataProvider() : Array;
	public function set dataProvider(value:Array) : Void;


	public function RightClickMenu();

	private function onMousePress(buttonIndex:Number, clickCount:Number) : Void;

	private function onMouseDown();

	public function SetHandleClose(handleClose:Boolean);

	private function CloseSelf();

	private function SlotClickedItem();

	public function Show() : Void;

	public function Hide() : Void;

}