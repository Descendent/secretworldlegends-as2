import com.GameInterface.DistributedValue;
import com.GameInterface.Tradepost;
import com.GameInterface.MailData;
import com.GameInterface.ProjectUtils;
import com.GameInterface.Utils;
import com.GameInterface.Game.Character;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.Utils.Text;
import GUI.TradePost.Views.SortButton;
import GUI.TradePost.Views.PromptWindow;
import mx.utils.Delegate;
import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.ScrollBar;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
import com.Utils.Format;
intrinsic class GUI.TradePost.Views.PostalServiceView extends UIComponent
{
	static private var HEADER_BUTTONS_GAP : Number;
	static private var SCROLL_WHEEL_SPEED : Number;
	static private var DRAG_PADDING : Number;
	static private var COLUMN_ATTACHMENTS : Number;
	static private var COLUMN_FROM : Number;
	static private var COLUMN_DATE : Number;
	static private var COLUMN_EXPIRES : Number;
	static private var COLUMN_SUBJECT : Number;
	static private var DEFAULT_MAIL_BODY_TEXT_HEIGHT : Number;
	static private var DEFAULT_MAIL_BODY_TEXT_WIDTH : Number;
	static private var RECEIVED_MAIL : String;
	static private var COMPOSE_LETTER : String;
	static private var COMPOSE_LETTER_LOCKED : String;
	static private var DELETE_MAIL : String;
	static private var DELETE_ALL_MAIL : String;
	static private var TAKE_ALL_ATTACHMENTS : String;
	static private var REPLY : String;
	static private var TO : String;
	static private var SEND : String;
	static private var EXPIRATION_DAYS : String;
	private var m_ReceivedMailHeader : MovieClip;
	private var m_ComposeLetterButton : MovieClip;
	private var m_Cash : MovieClip;
	private var m_PremiumCash : MovieClip;
	private var m_TimeCash : MovieClip;
	private var m_ListScrollBar : ScrollBar;
	private var m_MailScrollBar : MovieClip;
	private var m_ScrollBarPosition : Number;
	private var m_ReadMailHeader : MovieClip;
	private var m_DeleteMailButton : MovieClip;
	private var m_DeleteAllMailButton : MovieClip;
	private var m_TakeAllAttachmentsButton : MovieClip;
	private var m_ReadMailBody : MovieClip;
	private var m_MailList : MultiColumnListView;
	private var m_ReplyButton : Button;
	private var m_SelectedID : Number;
	private var m_SelectedIndex : Number;
	private var m_ConfirmDeleteMailPrompt : MovieClip;
	private var m_ItemIds : Array;
	private var m_DeleteList : Array;
	private var m_DefaultButtonWidth : Number;
	private var m_CheckInterval : Number;

	public function PostalServiceView();

	private function configUI() : Void;

	private function CheckButtonResize(scope:Object) : Void;

	private function LayoutButtons() : Void;

	private function SlotItemClicked(index:Number, buttonIndex:Number) : Void;

	private function HidePromptIfVisible() : Void;

	private function ButtonClickHandler(event:Object) : Void;

	private function TakeAllAttachments() : Void;

	private function DeleteAllMail() : Void;

	private function SlotConfirmDeleteMailPromptResponse(deleteAll:Boolean) : Void;

	private function SelectMailListIndex(index:Number) : Void;

	private function SlotNewMail(mailId:Number) : Void;

	private function SlotMailUpdate(mailId:Number) : Void;

	private function SlotMailDelete(mailId:Number) : Void;

	private function AddMailToList(mailId:Number) : Void;

	private function UpdateMailView() : Void;

	public function GetTextSummary(text:String) : String;

	private function PrefixZeroToMinutesCheck(value:Number) : String;

	private function SlotSelectedRow(ID:Number) : Void;

	private function ClearShowMail() : Void;

	private function OnScrollbarUpdate(event:Object) : Void;

	private function MouseWheelEventHandler(delta:Number) : Void;

	private function SlotSortClicked() : Void;

	private function UnSelectRows() : Void;

}