package ui.checkBox
{
	import flash.events.FocusEvent;
	
	import spark.components.CheckBox;
	
	public class CheckBox extends spark.components.CheckBox
	{
		public function CheckBox()
		{
			super();
			this.setStyle('skinClass', CheckBoxSkin);
		}
		
		override protected function focusOutHandler(event:FocusEvent):void
		{
		}
		
		override protected function focusInHandler(event:FocusEvent):void
		{
		}
		
		
		
		
	}
}