intrinsic class com.GameInterface.BrowserImageMetadata
{
	public var m_browserType : String;
	public var m_textureWidth : Number;
	public var m_textureHeight : Number;
	public var m_browserWidth : Number;
	public var m_browserHeight : Number;
	public var m_offsetX : Number;
	public var m_offsetY : Number;

	public function BrowserImageMetadata();

	public function SetBrowserType(browserType:String);

	public function SetTextureDimensions(textureWidth:Number, textureHeight:Number);

	public function SetBrowserDimensions(browserWidth:Number, browserHeight:Number);

	public function SetOffset(offsetX:Number, offsetY:Number);

}