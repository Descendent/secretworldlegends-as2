import GUI.Tutorial.DirectoryNode;
import com.Utils.Signal;
intrinsic class GUI.Tutorial.TutorialNode
{
	private var m_Id : Number;
	private var m_Name : String;
	private var m_ParentNode : DirectoryNode;
	private var m_MovieClip : MovieClip;
	public var SignalNodePressed : Signal;

	public function TutorialNode(id:Number, name:String);

	public function SetParent(parentNode:DirectoryNode);

	public function GetParentNode() : DirectoryNode;

	public function GetName() : String;

	public function GetMovieClip() : MovieClip;

	public function Draw(parentClip:MovieClip);

	public function Select();

}