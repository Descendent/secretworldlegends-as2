import GUIFramework.SFClipLoader;
import GUI.Tutorial.TutorialNode;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import GUI.Tutorial.TutorialWindow;
import com.Utils.Colors;
intrinsic class GUI.Tutorial.ResourceNode extends TutorialNode
{
	private var m_Args : Object;
	private var m_HasData : Boolean;
	private var m_Depth : Number;
	private var m_Indent : Number;
	private var m_IsRead : Boolean;
	private var m_ReadAlpha : Number;

	public function ResourceNode(id:Number, name:String);

	public function Draw(parentClip:MovieClip, width:Number);

	public function Select();

}