import com.GameInterface.LoreNode;
import gfx.utils.Delegate;
import com.Utils.Signal;
import com.GameInterface.Lore;
import com.GameInterface.DistributedValue;
import com.GameInterface.Game.Character;
import com.Utils.ID32;
import gfx.motion.Tween;
import mx.transitions.easing.*;
intrinsic class GUI.Achievement.AchievementPanelMenu extends MovieClip
{
	private var STATE_OPEN : Number;
	private var STATE_CLOSED : Number;
	private var m_Data : LoreNode;
	private var m_RendererLinkageId : String;
	private var m_LevelPadding : Number;
	private var m_NodePadding : Number;
	private var m_Width : Number;
	private var m_Height : Number;
	private var m_NodeFocus : DistributedValue;
	private var m_Type : Number;
	private var m_Redraw : Boolean;
	public var ID : Number;
	public var SizeChanged : Signal;

	public function AchievementPanelMenu();

	public function SetData(data:LoreNode, forceUpdate:Boolean);

	public function GetYPos(id:Number);

	public function SetSize(width:Number, height:Number);

	private function DrawNode(node:LoreNode, parent:MovieClip, level:Number);

	private function CloseNode();

	private function SlotSetNodeFocus();

	private function GetNodeList(node:LoreNode) : Array;

	private function Reflow();

	private function SlotTagRead(tagId:Number);

	private function SlotTagAdded(tagId:Number, character:ID32);

	private function GetLevel(node:LoreNode) : Number;

	private function GetClipFromDataNode(node:LoreNode) : MovieClip;

	private function RendererClickHandler(id:Number);

	private function GetLevelColor(level:Number) : Number;

}