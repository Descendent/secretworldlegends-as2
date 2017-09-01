import gfx.controls.ListItemRenderer;
import com.GameInterface.AccountManagement;
import com.GameInterface.DimensionData;
import com.GameInterface.CharacterData;
import com.Utils.LDBFormat;
intrinsic class GUI.LoginCharacterSelection.CharacterListItemRenderer extends ListItemRenderer
{
	private var m_CharacterName : TextField;
	private var m_PlayfieldInfo : TextField;
	private var m_Title : TextField;
	private var m_CreateNewCharacter : TextField;
	private var m_SlotsLeft : TextField;
	private var m_FactionIcon : MovieClip;
	private var m_IsConfigured : Boolean;
	private var m_Level : TextField;

	public function CharacterListItemRenderer();

	private function configUI();

	public function setData(characterData:Object);

	private function UpdateVisuals();

	private function GetDimensionData(dimensionId:Number) : DimensionData;

	private function GetFactionLogo(faction:Number) : String;

}