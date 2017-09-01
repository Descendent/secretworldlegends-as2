import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipDataProvider;
import com.GameInterface.DistributedValue;
import com.Utils.Signal;
import com.GameInterface.FeatData;
import com.GameInterface.Utils;
import com.Utils.Colors;
import gfx.core.UIComponent;
intrinsic class GUI.SkillHive.TemplateAbility extends UIComponent
{
	public var SignalClicked : Signal;
	private var m_Tooltip : TooltipInterface;
	public var m_FeatData : FeatData;
	private var m_Content : MovieClip;
	private var m_Lines : MovieClip;
	private var m_Background : MovieClip;
	private var m_EliteFrame : MovieClip;
	private var m_BuilderIcon : MovieClip;
	private var m_ConsumerIcon : MovieClip;
	private var m_ResourceIconMonitor : DistributedValue;

	public function TemplateAbility();

	public function SetFeatData(featData:FeatData);

	private function LoadIcon();

	private function UpdateResourceIcons();

	public function OpenTooltip();

	public function CloseTooltip();

	public function onRollOver();

	public function onRollOut();

	public function onDragOut();

	public function onMousePress();

}