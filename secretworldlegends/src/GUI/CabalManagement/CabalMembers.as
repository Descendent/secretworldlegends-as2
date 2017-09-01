import gfx.core.UIComponent;
import gfx.controls.Button;
import gfx.controls.DropdownMenu;
import gfx.controls.ScrollingList;
import gfx.controls.TextArea;
import gfx.controls.Label;
import gfx.controls.TextInput;
import gfx.controls.ButtonGroup;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.GameInterface.Friends;
import com.Components.SearchBox;
import com.Components.MultiColumnList.HeaderButton;
import mx.utils.Delegate;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Guild.*;
import com.Components.FCButton;
intrinsic class GUI.CabalManagement.CabalMembers extends UIComponent
{
	private var m_EditRoleNameWindow : MovieClip;
	private var m_PopupOverlay : MovieClip;
	private var m_MembersInfoHeader : Label;
	private var m_YourRoleLabel : Label;
	private var m_YourRole : Label;
	private var m_GovernmentTypeLabel : Label;
	private var m_GovernmentTypeDropdown : DropdownMenu;
	private var m_TotalMembersLabel : Label;
	private var m_TotalMembers : MovieClip;
	private var m_RolePermissionsHeader : Label;
	private var m_PermissionsScrollingList : ScrollingList;
	private var m_RoleButton : FCButton;
	private var m_PermissionsButton : FCButton;
	private var m_RolePermissionsNameButton : FCButton;
	private var m_RoleDropdown : MovieClip;
	private var m_PermissionsDropdown : MovieClip;
	private var m_RolePermissionButtonGroup : ButtonGroup;
	private var m_RolePermissionNameText : TextInput;
	private var m_MembersListHeader : Label;
	private var m_Header1 : HeaderButton;
	private var m_Header2 : HeaderButton;
	private var m_Header3 : HeaderButton;
	private var m_Header4 : HeaderButton;
	private var m_MembersScrollingList : ScrollingList;
	private var m_MembersSearchBox : SearchBox;
	private var m_ResetButton : Button;
	private var m_ApplyButton : Button;
	private var m_KickButtton : Button;
	private var m_DemoteButton : Button;
	private var m_PromoteButton : Button;
	private var m_RoleHeader : Array;
	private var m_PermissionHeader : Array;
	private var m_Permissions : Array;
	private var m_Roles : Array;
	private var m_MembersQuickList : Array;
	private var m_FullMemberList : Array;
	private var m_Members : Array;
	private var m_Guild : Guild;
	private var m_fieldArray : Array;
	private var m_headerArray : Array;
	private var m_GuildLeader : Number;
	private var m_CurrGovernmentType : Number;
	private var CUSTOM_GOVERNMENT : Number;
	private var CUSTOM : String;
	private var PERMISSION_BITS : Array;

	private function CabalMembers();

	private function configUI();

	public function SlotSortMembers(event:Object);

	public function SelectMember(event:Object);

	private function RemoveFocus() : Void;

	private function GovernmentTypeDisplayChanged() : Void;

	private function GetSelectedMembers() : Array;

	private function ResetChanges();

	private function ApplyChanges();

	private function KickMembers();

	private function DemoteMembers();

	private function PromoteMembers();

	private function SlotChangeRoleName(newName:String, oldName:String, rankNumber:String);

	private function UpdateRoleName(currName, newName, rank);

	private function SetLabels();

	private function SlotMemberUpdated();

	public function SlotGoverningformUpdated(newGoverningForm:Number);

	private function SlotRankUpdated();

	private function FakeMemberList();

	private function FillMemberList();

	private function AddGuildMemberToArray(guildMember:GuildMember, addArray:Array);

	private function SearchTextChanged();

	private function FillMembersInfo();

	private function FillRolePermissions();

	private function RolePermissionViewSwitch(event:Object);

	private function CreatePermissionsForRank(rank:GuildRank) : Array;

	public function CreateRanksForPermission(permission:GuildPermission) : Array;

	public function SelectPermission(event:Object) : Void;

	private function ShowRoleMenu();

	private function ShowPermissionsMenu();

	private function ShowNameEditor();

	private function OpenEditRoleNameWindow();

	private function CloseEditRoleNameWindow();

	private function SlotRemoveEditRoleNameWindow();

	private function DisableAllComponents(disable:Boolean);

	public function PermissionClicked(event:Object);

	public function RoleClicked(event:Object);

}