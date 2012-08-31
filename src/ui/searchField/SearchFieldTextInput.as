package ui.searchField
{
	import flash.events.FocusEvent;
	
	import spark.components.TextInput;
	
	import ui.searchField.SearchField;
	
	public class SearchFieldTextInput extends TextInput
	{
		
		public var searchField:SearchField;
		
		public function SearchFieldTextInput()
		{
			super();
			this.setStyle('skinClass', SearchFieldTextInputSkin);
		}
		
		override protected function focusInHandler(event:FocusEvent):void
		{
			searchField.addFocusGlow();
		}
		
		override protected function focusOutHandler(event:FocusEvent):void
		{
			searchField.removeFocusGlow();
		}
		
	}
}