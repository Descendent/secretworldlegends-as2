import gfx.core.UIComponent;
intrinsic class GUI.LoginCharacterSelection.ServerListFacebookInfo extends UIComponent
{
	private var m_TotalFriends : TextField;
	private var m_FriendsNumber : Number;

	public function ServerListFacebookInfo();

	private function configUI() : Void;

	public function SetTotalFriends(value:Number) : Void;

	public function SetWaitingText(value:String) : Void;

	public function GetTotalFriends() : Number;

	private function onRollOver() : Void;

	private function onRollOut() : Void;

}