import gfx.controls.ListItemRenderer;
import gfx.utils.Constraints;
import gfx.utils.Delegate;
import com.Components.TreeViewConstants;
intrinsic class com.Components.TreeViewItemRenderer extends ListItemRenderer
{
	public var iconItemLineStraight : String;
	public var iconFolderRoot : String;
	public var iconFolderLeaf : String;
	public var iconItemLineMiddle : String;
	public var iconItemLineBottom : String;
	public var iconItemAlone : String;
	public var iconItemTop : String;
	public var iconItemMiddle : String;
	public var iconItemBottom : String;
	public var iconSize : Number;
	public var textMargin : Number;
	private var hit : MovieClip;
	private var lineIconCache : Array;
	private var connectorIcon : MovieClip;
	private var folderIcon : MovieClip;

	public function TreeViewItemRenderer();

	public function setData(data:Object) : Void;

	private function configUI() : Void;

	private function draw() : Void;

	private function updateAfterStateChange();

	private function drawLayout();

	private function clearLayout() : Void;

	private function createFolderIcon(d:Number, cssz:Number) : MovieClip;

	private function createLeafIcon(d:Number, cssz:Number) : MovieClip;

	private function createButtonIcon(d:Number, cssz:Number) : MovieClip;

	private function handleItemButton(e) : Void;

}