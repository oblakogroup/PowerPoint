package ui.manageableButton
{
	import spark.components.Button;
	
	public class ManageableButton extends Button
	{
		[SkinState("up")]
		[SkinState("over")]
		[SkinState("down")]
		[SkinState("disabled")]
		
		public var currentButtonState:String = "";
		
		public function ManageableButton()
		{
			super();
		}
		
		override protected function getCurrentSkinState():String
		{
			return currentButtonState == "" ? super.getCurrentSkinState() : currentButtonState;
		}
		
	}
}