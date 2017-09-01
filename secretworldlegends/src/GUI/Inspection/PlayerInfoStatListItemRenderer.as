import gfx.controls.ListItemRenderer;
import com.GameInterface.Utils;
import com.Utils.ID32;
import com.Utils.LDBFormat;
intrinsic class GUI.Inspection.PlayerInfoStatListItemRenderer extends ListItemRenderer
{
	private var m_Label : TextField;
	private var m_Data : TextField;
	private var m_IsConfigured : Boolean;

	public function PlayerInfoStatListItemRenderer();

	private function configUI();

	public function setData(playerData:Object);

	private function UpdateVisuals();

}