import com.Utils.Colors;
import com.Components.MultiStateButton;
import mx.utils.Delegate;
intrinsic class GUI.Patcher.PromptContainer extends MovieClip
{
	private var m_PromptContainer : MovieClip;

	public function PromptContainer(text:String, acceptText:String, declineText:String, handler:Function, scope:Object, name:String, height:Number, width:Number, buttonHeight:Number);

	public function Close();

	public function Get() : MovieClip;

}