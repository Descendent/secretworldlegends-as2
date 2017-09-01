import com.Components.WindowComponentContent;
import com.GameInterface.ScenarioInterface;
import com.GameInterface.Scenario;
import com.GameInterface.Lore;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.Game.Team;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.GroupElement;
import gfx.controls.DropdownMenu;
import gfx.controls.Button;
import com.Utils.LDBFormat;
import com.Utils.ID32;
import com.GameInterface.DistributedValue;
import com.GameInterface.PvPMinigame.PvPMinigame;
intrinsic class GUI.ScenarioInterface.ScenarioContent extends WindowComponentContent
{
	private var m_SettingsLabel : TextField;
	private var m_LocationLabel : TextField;
	private var m_ObjectiveLabel : TextField;
	private var m_TimeLabel : TextField;
	private var m_DifficultyLabel : TextField;
	private var m_RoleLabel : TextField;
	private var m_LocationDropdown : DropdownMenu;
	private var m_ObjectiveDropdown : DropdownMenu;
	private var m_TimeDropdown : DropdownMenu;
	private var m_DifficultyDropdown : DropdownMenu;
	private var m_RoleDropdown : DropdownMenu;
	private var m_ScenarioName : TextField;
	private var m_ScenarioObjective : TextField;
	private var m_ScenarioDescription : TextField;
	private var m_ActivationStatus : TextField;
	private var m_ActivateButton : Button;
	private var m_Locations : Array;
	private var m_Objectives : Array;
	private var m_Descriptions : Array;
	private var m_Times : Array;
	private var m_Difficulties : Array;
	private var m_Roles : Array;
	private var m_PvPScenarios : Array;
	private var m_Team : Team;
	private var m_Initialized : Boolean;
	private var m_Reloading : Boolean;
	private var m_BuyDLC : Boolean;
	static private var NO_UNLOCK_REQ : Object;
	static private var ACTIVATE_LABEL : Object;
	static private var PURCHASE_LABEL : Object;
	static private var BEGINNER : Object;
	static private var NORMAL : Object;
	static private var ELITE : Object;
	static private var NIGHTMARE : Object;
	static private var GROUP : Object;
	static private var DAMAGE : Object;
	static private var TANK : Object;
	static private var HEAL : Object;

	public function ScenarioContent();

	private function configUI();

	private function SetLabels();

	private function SetData();

	private function SetDescription();

	private function SetActivationStatus();

	private function CheckLocations() : Array;

	private function CheckCooldowns() : Array;

	private function CheckDLC() : Array;

	private function GetDifficultyLockout() : Number;

	private function SlotDifficultyChanged();

	private function SlotObjectiveChanged();

	private function SlotLocationChanged();

	private function SlotRoleChanged();

	private function SlotActivateClicked();

	private function RemoveFocus() : Void;

	public function SlotClientJoinedTeam(team:Team) : Void;

	public function SlotClientLeftTeam() : Void;

	public function timeMap(time:Number) : Number;

	public function roleMap(role:Number) : Number;

	public function SlotTagAdded() : Void;

}