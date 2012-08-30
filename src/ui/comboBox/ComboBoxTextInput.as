package ui.comboBox
{
	import flash.events.FocusEvent;
	
	import spark.components.TextInput;
	
	public class ComboBoxTextInput extends TextInput
	{
		public function ComboBoxTextInput()
		{
			super();
			this.setStyle('skinClass', ComboBoxTextInputSkin);
		}
		
		override protected function focusInHandler(event:FocusEvent):void
		{
		}
		
		override protected function focusOutHandler(event:FocusEvent):void
		{
		}
		
	}
}