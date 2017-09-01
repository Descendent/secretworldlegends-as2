import com.GameInterface.Game.Character;
import com.GameInterface.Game.Dynel;
import com.GameInterface.Game.GroupElement;
intrinsic dynamic class com.Components.NameBox extends MovieClip
{
	public var m_Dynel : Dynel;
	public var m_GroupElement : GroupElement;
	public var m_NameXOrgPos : Number;
	public var i_Star : MovieClip;
	private var m_UseUpperCase : Boolean;
	private var m_ShowLevel : Boolean;
	private var i_NameField : TextField;

	public function Init();

	public function SetDynel(dynel:Dynel);

	public function SetGroupElement(groupElement:GroupElement);

	public function SlotStatChanged(statId:Number);

	public function SlotCharacterEntered();

	public function SlotCharacterExited();

	public function SetOnClient(onClient:Boolean);

	public function SetMaxWidth(maxWidth:Number);

	public function UseUpperCase(useUpperCase:Boolean);

	public function SetShowLevel(showLevel:Boolean);

}