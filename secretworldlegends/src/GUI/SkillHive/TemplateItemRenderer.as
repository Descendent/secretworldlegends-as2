import com.GameInterface.FeatData;
import com.GameInterface.FeatInterface;
import com.GameInterface.Lore;
import com.GameInterface.SkillWheel.SkillTemplate;
import gfx.controls.ListItemRenderer;
import GUI.SkillHive.SkillHiveFeatHelper;
import com.Utils.Colors;
intrinsic class GUI.SkillHive.TemplateItemRenderer extends ListItemRenderer
{
	private var m_Box : MovieClip;
	private var m_IsConfigured : Boolean;

	public function TemplateItemRenderer();

	private function configUI() : Void;

	public function setData(data:Object) : Void;

	private function Update() : Void;

}