import com.GameInterface.AccountManagement;
import com.GameInterface.Browser.Facebook;
import com.GameInterface.CharacterData;
import com.GameInterface.DimensionData;
import com.GameInterface.DistributedValue;
import com.GameInterface.Tooltip.*;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.controls.Button;
import gfx.controls.ListItemRenderer;
intrinsic class GUI.LoginCharacterSelection.ServerListItemRenderer extends ListItemRenderer
{
	static private var MAX_DOTS : Number;
	private var m_ServerName : TextField;
	private var m_ServerInfo : TextField;
	private var m_IsConfigured : Boolean;
	private var m_FacebookInfo : MovieClip;
	private var m_FacebookList : MovieClip;
	private var m_IntervalID : Number;
	private var m_WaitingTextDotCounter : Number;
	private var m_Tooltip : TooltipInterface;

	public function ServerListItemRenderer();

	private function configUI() : Void;

	public function setData(serverData:Object) : Void;

	private function UpdateVisuals() : Void;

	private function SlotWaitingForFacebookUpdate() : Void;

	private function SlotFacebookUpdated() : Void;

	private function onMouseMove() : Void;

}