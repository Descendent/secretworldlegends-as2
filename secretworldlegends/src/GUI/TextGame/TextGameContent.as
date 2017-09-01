import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import com.GameInterface.TextGame;
import com.GameInterface.TextGameRoom;
import com.GameInterface.TextGameEvent;
import com.GameInterface.TextGameLoader;
import com.GameInterface.Game.Character;
intrinsic class GUI.TextGame.TextGameContent extends WindowComponentContent
{
	public var m_TextInput : TextField;
	public var m_DisplayText : TextField;
	public var m_TopText : TextField;
	public var m_Background : MovieClip;
	private var m_CurrentGame : TextGame;
	private var m_CurrentRoom : TextGameRoom;
	private var m_Error : Boolean;
	private var m_UseTranslation : Boolean;
	private var m_Inventory : Array;
	private var m_Character : Character;
	private var m_Keywords : Array;
	private var m_QuitCommand : String;
	private var m_InventoryCommand : String;
	private var m_HelpCommand : String;
	private var m_ErrorMsg : String;

	public function TextGameContent();

	private function configUI();

	private function SubmitInput();

	private function CheckDefaultCommands(inputArray:Array) : Void;

	private function CheckInventory(inventoryItem:String) : Boolean;

	private function RemoveNonKeywords(inputArray:Array) : Array;

	private function GoToRoom(roomId:Number);

	private function ShowErrorScreen(errorString:String);

	private function GetText(input:String) : String;

	private function KeyDownEventHandler();

	private function SetInputFocus();

	private function SlotGameLoaded();

}