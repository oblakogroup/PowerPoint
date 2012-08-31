package ui.searchField
{
	import flash.events.FocusEvent;
	
	import spark.components.DropDownList;
	
	public class SearchFieldDropDownList extends DropDownList
	{
		public var searchField:SearchField;
		
		public function SearchFieldDropDownList()
		{
			super();
			this.setStyle('skinClass', SearchFieldDropDownListSkin);
		}
		
		override protected function focusOutHandler(event:FocusEvent):void
		{
			searchField.removeFocusGlow();
		}
		override protected function focusInHandler(event:FocusEvent):void
		{
			searchField.addFocusGlow();
		}
		
	}
}