package ui.comboBox
{
	import flash.events.FocusEvent;
	
	import spark.components.ComboBox;
	
	public class ComboBox extends spark.components.ComboBox
	{
		public function ComboBox()
		{
			super();
			this.setStyle('skinClass', ComboBoxSkin);
		}
		
		override protected function focusInHandler(event:FocusEvent):void
		{
		}
		
		override protected function focusOutHandler(event:FocusEvent):void
		{
		}
		
		
		
	}
}