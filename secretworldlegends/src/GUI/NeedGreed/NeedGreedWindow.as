import com.Components.ItemSlot;
import com.GameInterface.DialogIF;
import com.GameInterface.InventoryItem;
import com.GameInterface.NeedGreed;
import com.GameInterface.Tooltip.TooltipUtils;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipDataProvider;
import com.GameInterface.Utils;
import com.GameInterface.WaypointInterface;
import com.Utils.ID32;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
intrinsic class GUI.NeedGreed.NeedGreedWindow extends UIComponent
{
	public var SignalWindowSelected : Signal;
	private var m_Background : MovieClip;
	private var m_CloseButton : Button;
	private var m_TimeoutBar : MovieClip;
	private var m_IconSlot : MovieClip;
	private var m_ItemName : TextField;
	private var m_ItemType : TextField;
	private var m_ItemRequirement : TextField;
	private var m_ItemBindingInfo : TextField;
	private var m_NeedButton : Button;
	private var m_GreedButton : Button;
	private var m_PassButton : Button;
	private var m_CurrentDialog : DialogIF;
	private var m_Initialized : Boolean;
	private var m_TimeToCloseWindow : Number;
	private var m_CountdownTimer : Number;
	private var m_LootBagId : ID32;
	private var m_ItemPos : Number;
	private var m_Item : InventoryItem;
	private var m_ItemTypeIcon : MovieClip;
	private var m_ItemSlot : ItemSlot;

	public function NeedGreedWindow();

	private function configUI() : Void;

	public function Close() : Void;

	private function SetLabels() : Void;

	public function UpdateData(lootBagId:ID32, itemPos:Number, item:InventoryItem, timeout:Number) : Void;

	private function CountdownTimeout() : Void;

	private function SlotStartDragWindow() : Void;

	private function SlotStopDragWindow() : Void;

	private function NeedHandler() : Void;

	public function SlotBoPDialog(buttonID:Number, boxIdx:Number) : Void;

	private function GreedHandler() : Void;

	private function PassHandler() : Void;

}