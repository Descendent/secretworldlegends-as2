import gfx.core.UIComponent;
import gfx.controls.TileList;
import gfx.controls.Button;
import gfx.controls.DropdownMenu;
import mx.utils.Delegate;
import com.GameInterface.AgentSystemAgent;
import com.GameInterface.AgentSystem;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.LoreBase;
import com.Utils.Signal;
import com.Utils.LDBFormat;
import GUI.AgentSystem.SettingsPanel;
intrinsic class GUI.AgentSystem.Roster extends UIComponent
{
	private var m_TileList : TileList;
	private var m_PrevButton : Button;
	private var m_NextButton : Button;
	private var m_PageNum : TextField;
	private var m_SettingsButton : Button;
	private var m_SortDropdown : DropdownMenu;
	private var m_InstantBuy : MovieClip;
	public var m_AllAgents : Array;
	private var m_CurrentPage : Number;
	private var m_TotalPages : Number;
	private var m_SortObject : Object;
	private var m_FilterObject : Object;
	private var m_SettingsPanel : MovieClip;
	private var m_PlaySound : Boolean;
	private var m_CompareMission : Number;
	private var m_SortType : Number;
	private var m_Initialized : Boolean;
	private var m_HasData : Boolean;
	static private var AGENTS_PER_PAGE : Number;
	static private var MAX_LEVEL : Number;
	static private var TUTORIAL_COMPLETE : Number;
	public var SignalAgentSelected : Signal;

	public function Roster();

	private function configUI();

	private function SlotAgentStatusUpdated(agentData:AgentSystemAgent);

	private function SlotTagAdded(tagId:Number);

	private function InitializeSortDropdown();

	public function SetSortType(sortType:Number);

	public function GetSortType() : Number;

	public function SetFilters(filtersArray:Array);

	public function GetFiltersArray() : Array;

	public function SetData(agentList:Array);

	public function OverrideSort(missionId:Number);

	public function ClearOverrideSort();

	private function SortChanged();

	private function OpenSettings();

	private function ApplySettings(filterObject:Object);

	private function CloseSettings();

	private function SetPage(pageNum:Number);

	private function PreviousPage();

	private function NextPage();

	private function UpdatePagination();

	private function OnAgentSelected(event:Object);

	private function RemoveFocus();

	private function FilterAgents(pageNum:Number) : Array;

	private function BuyAgentBoosters();

}