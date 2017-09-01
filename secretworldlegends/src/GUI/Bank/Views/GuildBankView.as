import com.Utils.LDBFormat;
import com.GameInterface.Inventory;
import com.GameInterface.Tradepost;
import com.GameInterface.Guild.Guild;
import com.GameInterface.Game.CharacterBase;
import gfx.controls.Button;
intrinsic class GUI.Bank.Views.GuildBankView extends MovieClip
{
	static private var COLUMNS : Number;
	static private var ROWS : Number;
	static private var GAP : Number;
	static private var YOUR_GUILDS_ITEMS : String;
	static private var PAGE_OF : String;
	private var m_GuildBankHeader : MovieClip;
	private var m_GuildContainer : MovieClip;
	private var m_PaginatePrevious : MovieClip;
	private var m_PaginateNext : MovieClip;
	private var m_CurrentPage : Number;
	private var m_PageNumber : TextField;
	private var m_TotalPages : Number;

	public function GuildBankView();

	private function onLoad() : Void;

	private function SlotPreviousPage() : Void;

	private function SlotNextPage() : Void;

}