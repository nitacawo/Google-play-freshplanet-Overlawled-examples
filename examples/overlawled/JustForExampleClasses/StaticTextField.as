package JustForExampleClasses
{
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;

	public class StaticTextField
	{
		public static var feedback : TextField = new TextField();
		static var format : TextFormat = new TextFormat();

		public function StaticTextField() 
		{
			
				
		}
		public static function init():void
		{
			format.font = "_sans";
			format.size = 20;
			format.color = 0x00000;
			feedback.defaultTextFormat = format;
			feedback.width = 480;
			feedback.height = 220;
			feedback.x = 0;
			feedback.y = 700;
			feedback.multiline = true;
			feedback.wordWrap = true;
			feedback.text = "Hello";
		}
	}
}
