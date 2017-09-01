import com.Utils.LDBFormat;
import gfx.controls.ButtonBar;
import gfx.core.UIComponent;
import GUI.Bank.BankViewsContainer;
import com.Components.WindowComponentContent;
import com.GameInterface.Game.Character;
import com.GameInterface.Guild.*;
import com.GameInterface.Inventory;
import com.GameInterface.DistributedValue;
import com.Utils.ID32;
intrinsic class GUI.Bank.BankContent extends WindowComponentContent
{
	static private var STORE_AND_SELL : String;
	static private var GUILD_BANK : String;
	static private var SCROLL_WHEEL_SPEED : Number;
	private var m_ButtonBar : ButtonBar;
	private var m_TabButtonArray : Array;
	private var m_ViewsContainer : MovieClip;

	public function BankContent();

	private function configUI() : Void;

	private function SlotGuildCharacterLeftCabal(characterId:ID32) : Void;

	private function RemoveFocus() : Void;

	private function SetSelectedContent(event:Object) : Void;

	public function SetSelectedIndex(value:Number) : Void;

	public function GetSelectedIndex() : Number;

}