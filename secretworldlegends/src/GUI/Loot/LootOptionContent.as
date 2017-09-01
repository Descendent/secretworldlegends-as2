import com.Utils.Signal;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import gfx.controls.Button;
import gfx.controls.DropdownMenu;
import gfx.controls.TextArea;
import com.GameInterface.NeedGreed;
import gfx.controls.CheckBox;
import com.GameInterface.DistributedValue;
import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.Components.WindowComponentContent;
intrinsic class GUI.Loot.LootOptionContent extends WindowComponentContent
{
	public var SignalCloseLootOptionWindow : com.Utils.Signal;
	private var m_LootTypeHeader : TextField;
	private var m_LootTypeLabel : TextField;
	private var m_LootTypeDropdown : DropdownMenu;
	private var m_NeedGreedCheckbox : CheckBox;
	private var m_ThresholdDropdown : DropdownMenu;
	private var m_LootTypeDescriptionHeader : MovieClip;
	private var m_LootDescriptionText : TextArea;
	private var m_ApplyButton : Button;
	private var m_CanChangeLootOptions : Boolean;
	private var m_Initialized : Boolean;
	private var m_CanClientUpdateOptions : Boolean;

	public function LootOptionContent();

	private function configUI() : Void;

	private function SlotCloseLootOptionWindow() : Void;

	private function SlotLootModeChanged(newLootMode:Number) : Void;

	private function SlotLootThresholdChanged(newLootThreshold:Number) : Void;

	private function SlotNeedGreedChanged(needGreed:Boolean) : Void;

	private function UpdateLootDescription() : Void;

	private function SlotCanChangeLootOptionsChanged(canChangeLootOptions:Boolean) : Void;

	private function RemoveFocus() : Void;

	private function NeedGreedToggleHandler(n:Object) : Void;

	private function SetLabels() : Void;

	private function UpdateData() : Void;

	private function DisableOptions() : Void;

	private function SetLootTypeDropdownData() : Void;

	private function SetThresholdDropdownData() : Void;

	private function CloseLootOptionWindow() : Void;

	private function ApplyLootOptions() : Void;

}