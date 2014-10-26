package JustForExampleClasses
{
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.Sprite;
	import flash.text.Font;
	import flash.text.TextFormatAlign;
	import flash.text.AntiAliasType;
	import flash.text.TextFieldType;
	
	public class FastButton extends Sprite
	{
		var Text_input = new TextField();
		var myDefaultFormat:TextFormat = new TextFormat();
			

		public function FastButton(TextToShow:String):void
		{
			
			myDefaultFormat.size = 40;
			myDefaultFormat.align = TextFormatAlign.CENTER;
			myDefaultFormat.font = "_sans";
			Text_input.embedFonts = false;
			Text_input.defaultTextFormat = myDefaultFormat;

			
			Text_input.textColor = 0x000000;   
			//отрубаем гребанное выделение
			Text_input.mouseEnabled = false;
			Text_input.tabEnabled = false;
			Text_input.type = TextFieldType.DYNAMIC;
			Text_input.text = TextToShow;//назначаем текст
			Text_input.border = true;
			Text_input.wordWrap = true;
			Text_input.width = 480;
			Text_input.height = 80;
			Text_input.x = 0;
			Text_input.y = 0;
			this.addChild(Text_input);
		}

	}
	
}
