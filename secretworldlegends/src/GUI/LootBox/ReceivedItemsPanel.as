import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Utils.LDBFormat;
import com.Utils.Signal;
intrinsic class GUI.LootBox.ReceivedItemsPanel extends UIComponent
{
	private var m_CloseButton : Button;
	private var m_Data : Array;
	private var m_Initialized : Boolean;
	public var SignalPanelClosed : Signal;

	public function ReceivedItemsPanel();

	public function configUI();

	public function SetData(receivedItems:Array) : Void;

	private function PopulateItems();

	private function CloseReceivedHandler();

}