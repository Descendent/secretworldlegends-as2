import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.Components.MultiColumnList.MCLItemValueData;
import com.Components.MultiColumnList.MCLTextCellRenderer;
import com.Components.MultiColumnList.MCLMovieClipCellRenderer;
import com.Components.MultiColumnList.MCLMovieClipAndTextCellRenderer;
import gfx.core.UIComponent;
import com.Components.MultiColumnList.MCLItemRenderer;
import com.Components.MultiColumnListView;
import com.Components.MultiColumnList.MCLItemValue;
import com.Components.MultiColumnList.MCLItemDefault;
import com.Components.MultiColumnList.MCLItem;
import com.Utils.ID32;
intrinsic class com.Components.MultiColumnList.MCLItemRendererDefault extends MCLItemRenderer
{
	public function MCLItemRendererDefault();

	public function SetSelected(selected:Boolean);

	public function SetData(listView:MultiColumnListView, data:MCLItem);

}