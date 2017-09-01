import com.Components.FCButton;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.LookingForGroup;
import gfx.controls.Button;
import gfx.controls.TextArea;
import gfx.controls.DropdownMenu;
import gfx.core.UIComponent;
import mx.utils.Delegate;
import GUI.GroupSearch.GroupSearchFiltersWindow;
intrinsic class GUI.GroupSearch.GroupSearchPromptWindow extends UIComponent
{
	static public var MODE_SELECT_ROLE : String;
	static public var MODE_CONFIRM_LEAVE : String;
	static public var MODE_VIEW : String;
	static private var CONTENT_PERSISTENCE : String;
	static private var SELECT_ROLE_PROMPT_MESSAGE : String;
	static private var VIEW_ROLE_PROMPT_MESSAGE : String;
	static private var SELECT_ACTIVITY_PROMPT_MESSAGE : String;
	static private var VIEW_ACTIVITY_PROMPT_MESSAGE : String;
	static private var SELECT_LOCATION_PROMPT_MESSAGE : String;
	static private var VIEW_LOCATION_PROMPT_MESSAGE : String;
	static private var SELECT_DIFFICULTY_PROMPT_MESSAGE : String;
	static private var VIEW_DIFFICULTY_PROMPT_MESSAGE : String;
	static private var INPUT_TEXT_PROMPT_MESSAGE : String;
	static private var TANK_BUTTON_LABEL : String;
	static private var TANK_BUTTON_TOOLTIP : String;
	static private var DPS_BUTTON_LABEL : String;
	static private var DPS_BUTTON_TOOLTIP : String;
	static private var HEALER_BUTTON_LABEL : String;
	static private var HEALER_BUTTON_TOOLTIP : String;
	static private var OK_LABEL : String;
	static private var LEAVE_LABEL : String;
	static private var CANCEL_LABEL : String;
	static private var UPDATE_LABEL : String;
	static private var MAX_DUNGEON_TEAM : Number;
	static private var MAX_RAID_TEAM : Number;
	public var SignalPromptResponse : Signal;
	private var m_Background : MovieClip;
	private var m_SelectRoleMessage : TextField;
	private var m_SelectActivityMessage : TextField;
	private var m_SelectLocationMessage : TextField;
	private var m_SelectDifficultyMessage : TextField;
	private var m_ToggleButtonArray : Array;
	private var m_TankButton : FCButton;
	private var m_TankLabel : TextField;
	private var m_DPSButton : FCButton;
	private var m_DPSLabel : TextField;
	private var m_HealerButton : FCButton;
	private var m_HealerLabel : TextField;
	private var m_CommentMessage : TextField;
	private var m_InputText : TextArea;
	private var m_ActivityDropdown : DropdownMenu;
	private var m_LocationDropdown : DropdownMenu;
	private var m_DifficultyDropdown : DropdownMenu;
	private var m_OKButton : Button;
	private var m_CancelButton : Button;
	private var m_UpdateButton : Button;
	private var m_Mode : String;
	private var m_UpdateEnabled : Boolean;

	public function GroupSearchPromptWindow();

	private function configUI() : Void;

	public function ShowPrompt(mode:String, playField:Number, location:Number, difficulty:Number, comment:String, tank:Boolean, damage:Boolean, heal:Boolean) : Void;

	private function ToggleRoleButtonClickEventHandler(event:Object) : Void;

	private function TextChangeEventHandler() : Void;

	private function EnableUpdate() : Void;

	private function UpdateUpdateState() : Void;

	private function UpdateOKState() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	private function ActivityDropdownChanged() : Void;

}