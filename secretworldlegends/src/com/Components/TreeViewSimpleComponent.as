import com.GameInterface.LoreNode;
import gfx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.Lore;
intrinsic class com.Components.TreeViewSimpleComponent extends MovieClip
{
	private var m_Data : LoreNode;
	private var m_RendererLinkageId : String;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_LevelPadding : Number;
	private var m_CurrentClip : MovieClip;
	private var m_NameTextFormat : TextFormat;
	private var m_StatTextFormat : TextFormat;
	public var ID : Number;
	public var SignalClicked : Signal;

	public function TreeViewSimpleComponent();

	public function SetData(data:LoreNode, doDraw:Boolean);

	public function SetSize(width:Number, height:Number);

	public function SetRenderer(rendererId:String) : Void;

	private function Draw(data:Array, context:MovieClip, level:Number);

	public function GoToNode(id:Number);

	private function RendererClickHandler(target:MovieClip);

	private function CloseRenderer(target);

	private function OpenRenderer(target);

	private function Reflow(target:MovieClip, spaceChange:Number);

	private function CanOpenRenderer(id:Number) : Boolean;

	private function GetLevelColor(level:Number) : Number;

}