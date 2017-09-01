import com.GameInterface.Claim;
import com.GameInterface.ClaimItemData;
import com.GameInterface.InventoryItem;
import com.GameInterface.ProjectUtils;
import com.GameInterface.DistributedValue;
import com.GameInterface.Utils;
import com.Utils.LDBFormat;
import gfx.controls.Button;
import gfx.core.UIComponent;
import GUI.Claim.SortButton;
import GUI.Claim.PromptWindow;
import com.Utils.Colors;
import com.Components.WindowComponentContent;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.ColumnData;
import com.Components.InventoryItemList.MCLItemInventoryItem;
intrinsic class GUI.Claim.ClaimWindowContent extends WindowComponentContent
{
	static private var DELETE : String;
	static private var CLAIM : String;
	static private var CLAIM_ALL : String;
	static private var CLAIM_LINK : String;
	static private var CLAIM_STEAM : String;
	static private var EXPIRE_NEVER : String;
	static private var EXPIRATION_DAYS : String;
	static private var SCROLL_WHEEL_SPEED : Number;
	private var m_ClaimList : MultiColumnListView;
	private var m_ScrollBar : MovieClip;
	private var m_ItemsArray : Array;
	private var m_PromptWindow : MovieClip;
	private var m_ReponseTarget : MovieClip;
	private var m_DeleteButton : Button;
	private var m_ClaimButton : Button;
	private var m_ClaimLinkButton : Button;
	private var m_ClaimSteamButton : Button;
	private var m_ClaimAllButton : Button;
	private var m_SelectedID : Number;
	private var m_SortTarget : String;
	private var m_SortDirection : String;
	private var m_ScrollBarPosition : Number;

	public function ClaimWindowContent();

	private function configUI() : Void;

	private function SlotItemSelected(index:Number) : Void;

	private function SlotUnselectRows() : Void;

	private function SlotClaimsUpdated() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	private function SlotPromptResponse(response:String, id:Number) : Void;

	private function DisableMainWindow(value:Boolean) : Void;

	private function CanClaimLinkedItems() : Boolean;

	private function CanClaimSteamItems() : Boolean;

}