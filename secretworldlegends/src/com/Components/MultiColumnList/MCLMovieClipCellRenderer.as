import com.Utils.ID32;
import com.GameInterface.Utils;
import com.Components.MultiColumnList.MCLItemRenderer;
intrinsic class com.Components.MultiColumnList.MCLMovieClipCellRenderer extends com.Components.MultiColumnList.MCLBaseCellRenderer
{
	public var m_Width : Number;
	public var m_Height : Number;
	public var m_MovieClipArray : Array;

	public function MCLMovieClipCellRenderer(parent:MCLItemRenderer, id:Number, movieClip:Object);

	private function LoadMovieClip(parent:MCLItemRenderer, movieClip:Object) : Void;

	public function SetPos(x:Number, y:Number);

	public function onLoadComplete(target:MovieClip);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

}