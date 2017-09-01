import gfx.core.UIComponent;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import com.GameInterface.Game.Character;
import com.GameInterface.Utils;
import com.Components.ListHeader;
import com.Components.WindowComponentContent;
import gfx.controls.Button;
import mx.utils.Delegate;
import com.Utils.Text;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
intrinsic class GUI.Wallet.WalletWindow extends WindowComponentContent
{
	private var m_Tokens : Array;
	private var m_Character : Character;
	private var m_MultiColumnList : MultiColumnListView;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_ItemWidth : Number;
	private var m_AmountWidth : Number;
	private var m_ItemColumn : Number;
	private var m_AmountColumn : Number;
	private var m_IsMember : Boolean;
	public var SignalClose : Signal;

	public function WalletWindow();

	public function UpdateMembershipStatus(member:Boolean);

	public function SetSize(width:Number, height:Number);

	private function SlotTokenAmountChanged(tokenId:Number, newAmount:Number, oldAmount:Number);

	private function SlotReloadTokens();

	public function configUI();

	private function CreateTokens();

	private function UpdateToken(tokenObj:Object);

	private function Layout();

}