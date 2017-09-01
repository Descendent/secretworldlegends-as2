import com.Components.MultiColumnList.ColumnData;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItemValueData;
import com.GameInterface.Friends;
import com.Utils.Faction;
import com.Utils.ID32;
import com.Utils.LDBFormat;
import GUI.Friends.Views.Row;
import GUI.Friends.Views.View;
intrinsic class GUI.Friends.Views.IgnoredView extends View
{
	static private var COLUMN_NAME : Number;
	private var m_Header : MovieClip;
	private var m_IgnoredArray : Array;

	private function IgnoredView();

	private function configUI() : Void;

	public function SlotItemClicked(index:Number, buttonIndex:Number) : Void;

	private function SlotMovieClipAdded(itemIndex:Number, columnId:Number, movieClip:MovieClip) : Void;

	private function SlotIgnoredUpdate() : Void;

}