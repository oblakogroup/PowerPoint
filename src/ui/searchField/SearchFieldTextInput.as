package ui.searchField
{
	import flash.display.DisplayObject;
	import flash.events.FocusEvent;
	
	import spark.components.Label;
	import spark.components.RichEditableText;
	import spark.components.TextInput;
	
	import ui.searchField.SearchField;
	
	public class SearchFieldTextInput extends TextInput
	{
		[Bindable]
		[SkinPart(required="false")]
		public var customPrompt:Label;
		[Bindable]
		public var customPromptValue:String = ""; 
		
		public var searchField:SearchField;
		
		public function SearchFieldTextInput()
		{
			super();
			this.setStyle('skinClass', SearchFieldTextInputSkin);
		}
		
		override protected function focusInHandler(event:FocusEvent):void
		{
			customPrompt.text ="";
			searchField.addFocusGlow();
		}
		
		override protected function focusOutHandler(event:FocusEvent):void
		{
			customPrompt.text = textDisplay == "" ? customPromptValue : "";
			searchField.removeFocusGlow();
		}
		
		override protected function partAdded(partName:String, instance:Object):void
			
		{
			
			super.partAdded(partName, instance);
			
			if (instance == customPrompt) {
				customPrompt.text = customPromptValue;
				invalidateProperties();
			}
			
		}
		
	}
}