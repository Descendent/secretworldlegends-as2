import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
import com.GameInterface.Friends;
import com.GameInterface.Game.Character;
import com.Utils.Faction;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import GUI.Friends.Views.View;
intrinsic class GUI.Friends.Views.GuildView extends View
{
	static private var COLUMN_NAME : Number;
	static private var COLUMN_ROLE : Number;
	static private var COLUMN_SOCIETY : Number;
	static private var COLUMN_RANK : Number;
	static private var COLUMN_REGION : Number;
	static private var COLUMN_STATUS : Number;
	private var m_Character : Character;
	private var m_Header : MovieClip;
	private var m_CabalArray : Array;

	private function GuildView();

	private function configUI() : Void;

	public function SlotItemClicked(index:Number, buttonIndex:Number) : Void;

	private function SlotMovieClipAdded(itemIndex:Number, columnId:Number, movieClip:MovieClip) : Void;

	private function SlotGuildUpdate() : Void;

}