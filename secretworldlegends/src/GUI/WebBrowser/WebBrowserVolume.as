import mx.data.encoders.Num;
intrinsic class GUI.WebBrowser.WebBrowserVolume extends MovieClip
{
	static public var LEVEL_MUTE : Number;
	static public var LEVEL_LOW : Number;
	static public var LEVEL_MEDIUM : Number;
	static public var LEVEL_HIGH : Number;
	private var m_Volume0 : MovieClip;
	private var m_Volume1 : MovieClip;
	private var m_Volume2 : MovieClip;
	private var m_Volume3 : MovieClip;
	private var m_VolumeLevel : Number;

	public function get volumeLevel() : Number;
	public function set volumeLevel(value:Number) : Void;


	public function WebBroswerVolume();

	private function HideVolumeIcons() : Void;

}