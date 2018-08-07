import com.GameInterface.NewsBase;
intrinsic class GUI.DailyLogin.News extends gfx.core.UIComponent
{
	public var m_News : Object;

	public function News();

	public function configUI();

	public function CleanUp();

	public function SlotNewsNodeAdded(index, headline, text, imagePath, articleURL);

	public function SlotNewsNodeImageDownloaded(index);

	public function SlotNewsConfigFailed();

	public function SlotNewsNodeImageFailed(index);

	public function CloseNews();

}