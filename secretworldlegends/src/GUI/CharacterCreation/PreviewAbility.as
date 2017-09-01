import com.GameInterface.FeatData;
import com.GameInterface.Utils;
import com.Utils.Colors;
import gfx.core.UIComponent;
intrinsic class GUI.CharacterCreation.PreviewAbility extends UIComponent
{
	public var m_FeatData : FeatData;
	private var m_Content : MovieClip;
	private var m_Lines : MovieClip;
	private var m_Background : MovieClip;
	private var m_EliteFrame : MovieClip;

	public function PreviewAbility();

	public function SetFeatData(featData:FeatData);

	private function LoadIcon();

}