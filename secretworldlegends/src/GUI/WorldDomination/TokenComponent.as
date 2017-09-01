import com.Utils.ID32;
import com.GameInterface.Utils;
import com.GameInterface.Game.BuffData;
import com.GameInterface.Tooltip.*;
import com.GameInterface.DistributedValue;
intrinsic class GUI.WorldDomination.TokenComponent extends MovieClip
{
	private var m_IconLoader : MovieClipLoader;
	private var m_BuffData : BuffData;
	private var m_CharacterID : ID32;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipOrientation : Number;
	private var m_Icon : MovieClip;

	public function BuffComponent();

	public function SetCharacterID(characterID:ID32) : Void;

	public function SetTooltipOrientation(value:Number) : Void;

	public function GetBuffData() : BuffData;

	public function SetBuffData(buffData:BuffData) : Void;

	public function SetIcon(icon:ID32) : Void;

	public function GetIcon() : MovieClip;

	private function MakeTooltip(buffID:Number) : Void;

	private function MakeTooltipFloating() : Void;

	public function Remove() : Void;

	public function CloseTooltip() : Void;

	public function UnloadIcon() : Void;

	private function onMousePress(mouseButtonID:Number);

	private function onRollOver();

	public function onRollOut();

}