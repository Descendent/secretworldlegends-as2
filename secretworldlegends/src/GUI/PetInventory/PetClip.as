import gfx.core.UIComponent;
import com.GameInterface.Lore;
import com.GameInterface.LoreBase;
import com.GameInterface.LoreNode;
import com.GameInterface.SpellBase;
import com.Utils.Colors;
intrinsic class GUI.PetInventory.PetClip extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_Foreground : MovieClip;
	private var m_UseFrame : MovieClip;
	private var m_PetNode : LoreNode;
	private var m_Selected : Boolean;

	public function PetClip();

	public function onMousePress(mouseBtnId:Number);

	public function SetSelected(select:Boolean);

	public function GetNode() : LoreNode;

	public function SetData(petNode);

	public function SetFavorite(favorite:Boolean);

	private function TagAdded();

	private function LoadImage(container:MovieClip, mediaId:Number);

	private function onLoadInit(target:MovieClip);

	private function onLoadError(target:MovieClip, errorcode:String, httpStatus:Number);

}