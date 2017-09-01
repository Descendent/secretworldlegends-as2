import com.Components.MultiColumnList.MCLBaseCellRenderer;
import com.GameInterface.Tooltip.TooltipUtils;
intrinsic class com.Components.FeatList.MCLFeatTypeCellRenderer extends MCLBaseCellRenderer
{
	private var m_WeaponIcon : MovieClip;
	private var m_WeaponName : TextField;

	public function MCLFeatTypeCellRenderer(parent:MovieClip, id:Number, weaponName:String, weaponRequirement:Number);

	public function SetPos(x:Number, y:Number);

	public function SetSize(width:Number, height:Number);

	public function GetDesiredWidth() : Number;

}