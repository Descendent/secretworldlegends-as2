import gfx.controls.ListItemRenderer;
import com.GameInterface.Utils;
import com.Utils.Colors;
import com.GameInterface.Guild.*;
import com.Utils.LDBFormat;
intrinsic class GUI.CabalManagement.MembersListItemRenderer extends ListItemRenderer
{
	private var _disableFocus : Boolean;
	private var m_MembersListItemRendererBackground : MovieClip;
	public var id : Number;
	public var m_NickName : TextField;
	public var m_Playfield : TextField;
	public var m_GuildRank : TextField;
	public var m_StatusBool : Boolean;
	public var m_Status : TextField;
	public var m_LastOnline : Number;

	private function MembersListItemRenderer();

	public function setData(data:Object) : Void;

	private function updateAfterStateChange() : Void;

}