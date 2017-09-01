import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.Components.ItemSlot;
import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
import com.Utils.Signal;
import com.Utils.ID32;
import mx.utils.Delegate;
intrinsic class GUI.NeedGreed.AcceptItemPromptWindow extends UIComponent
{
	static private var PROMPT_MESSAGE : String;
	static private var OK_LABEL : String;
	static private var CANCEL_LABEL : String;
	public var SignalPromptResponse : Signal;
	private var m_Background : MovieClip;
	private var m_Message : TextField;
	private var m_OKButton : Button;
	private var m_CancelButton : Button;
	private var m_IconSlot : MovieClip;
	private var m_ItemSlot : ItemSlot;
	private var m_MaxDragX : Object;
	private var m_MinDragX : Object;
	private var m_MaxDragY : Object;
	private var m_MinDragY : Object;

	public function AcceptItemPromptWindow();

	private function SetData(lootBagId:ID32, itemPosition:Number) : Void;

	private function configUI() : Void;

	private function CheckPositionLimits() : Void;

	public function CorrectPostion() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	private function MoveDrag();

	private function MoveDragRelease();

	private function DragPositionCheck();

	public function Clear() : Void;

}