import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.ScrollingList;
import gfx.controls.Label;
import gfx.controls.CheckBox;
import com.Utils.LDBFormat;
import com.Utils.Colors;
import com.GameInterface.GuildLog;
intrinsic class GUI.CabalManagement.CabalLog extends UIComponent
{
	private var m_LogHeader : Label;
	private var m_AllCheckBox : CheckBox;
	private var m_BankCheckBox : CheckBox;
	private var m_MembershipCheckBox : CheckBox;
	private var m_GovernmentCheckBox : CheckBox;
	private var m_AllTextField : TextField;
	private var m_BankTextField : TextField;
	private var m_MembershipTextField : TextField;
	private var m_GovernmentTextField : TextField;
	private var m_TimeHeader : TextField;
	private var m_TypeHeader : TextField;
	private var m_ActivityHeader : TextField;
	private var m_LogScrollingList : ScrollingList;
	private var m_PageButton1 : Button;
	private var m_PageButton2 : Button;
	private var m_PageButton3 : Button;
	private var m_PageButton4 : Button;
	private var m_PageButton5 : Button;
	private var m_PageButton6 : Button;
	private var m_PrevPageButton : Button;
	private var m_NextPageButton : Button;
	private var m_LogQuickList : Array;
	private var m_fieldArray : Array;
	private var m_PageButtonArray : Array;
	private var m_Pages : Array;
	private var m_NumPages : Number;
	private var m_CurrPage : Number;
	static private var ENTRIES_PER_PAGE : Number;
	static private var PAGE_BUTTON_GAP : Number;

	private function CabalLog();

	private function configUI();

	private function SetLabels();

	private function SlotGuildLogUpdated() : Void;

	private function PageButtonClicked(pageButton:Object) : Void;

	private function PageBackward() : Void;

	private function PageForward() : Void;

	private function TypeFilterChanged(checkBox:Object) : Void;

	private function AllBoxChanged();

	private function InsertPageBreaks(totalEntries:Array);

	private function GoToPage(pageIndex:Number);

	private function UpdatePagination();

}