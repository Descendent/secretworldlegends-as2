import com.GameInterface.InventoryItem;
import com.Components.ItemSlot;
import com.Utils.GlobalSignal;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import gfx.core.UIComponent;
import gfx.controls.Slider;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipDataProvider;
intrinsic class com.Components.SplitItemPopup extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_Icon : MovieClip;
	private var m_Title : TextField;
	private var m_Name : TextField;
	private var m_Type : TextField;
	private var m_Rank : TextField;
	private var m_Stack : TextField;
	private var m_MaxStack : TextField;
	private var m_CancelButton : Button;
	private var m_AcceptButton : Button;
	private var m_CloseButton : Button;
	private var m_ItemSlot : ItemSlot;
	private var m_Slider : MovieClip;
	public var SignalAcceptSplitItem : Signal;
	public var SignalCancelSplitItem : Signal;
	private var m_SourceItemSlot : ItemSlot;
	private var m_MaxStackSize : Number;

	public function SplitItemPopup();

	public function configUI();

	public function onKeyDown();

	public function SlotTextChanged();

	public function SlotRemoveFocus();

	private function SlotStartDragWindow();

	private function SlotStopDragWindow();

	public function OnAccept();

	public function OnCancel();

	public function OnSliderChange(event:Object);

	public function SetItemSlot(itemSlot:ItemSlot);

	private function ClampToScreen();

}