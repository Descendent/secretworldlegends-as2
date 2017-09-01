import com.Utils.LDBFormat;
import GUI.Friends.Views.Row;
import GUI.Friends.Views.View;
import com.GameInterface.AccountManagement;
import com.GameInterface.DimensionData;
import com.GameInterface.Friends;
import com.Utils.ID32;
import com.Utils.Faction;
import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
intrinsic class GUI.Friends.Views.FriendsView extends View
{
	static private var COLUMN_NAME : Number;
	static private var COLUMN_SOCIETY : Number;
	static private var COLUMN_DIMENSION : Number;
	static private var COLUMN_STATUS : Number;
	private var m_Header : MovieClip;
	private var m_FriendsArray : Array;

	private function FriendsView();

	private function configUI() : Void;

	public function SlotItemClicked(index:Number, buttonIndex:Number) : Void;

	private function SlotMovieClipAdded(itemIndex:Number, columnId:Number, movieClip:MovieClip) : Void;

	private function SlotFriendsUpdate() : Void;

	private function GetDimensionData(dimensionId:Number) : String;

}