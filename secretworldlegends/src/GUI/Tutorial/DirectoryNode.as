import com.GameInterface.LoreNode;
import GUI.Tutorial.TutorialNode;
import GUI.Tutorial.ResourceNode;
import com.GameInterface.Lore;
import GUI.Tutorial.TutorialWindow;
intrinsic class GUI.Tutorial.DirectoryNode extends TutorialNode
{
	public var m_DirectoryNodes : Array;
	public var m_ResourceNodes : Array;
	private var m_Width : Number;
	public var m_IsOpen : Boolean;
	private var m_Depth : Object;
	private var m_Indent : Number;

	public function DirectoryNode(id:Number, name:String);

	public function AddDirectoryNode(node:DirectoryNode);

	public function AddResourceNode(node:ResourceNode);

	public function ToggleIsOpen();

	public function SetIsOpen(isOpen:Boolean);

	public function Select();

	public function Draw(parentClip:MovieClip);

}