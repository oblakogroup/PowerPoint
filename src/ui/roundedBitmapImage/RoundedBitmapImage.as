package ui.roundedBitmapImage
{
	import mx.core.UIComponent;
	
	import spark.primitives.BitmapImage;
	
	public class RoundedBitmapImage extends BitmapImage
	{
		
		public var cornerRadius:Number = -1;
		public var topLeftCornerRadius:Number = -1;
		public var topRightCornerRadius:Number = -1;
		public var bottomLeftCornerRadius:Number = -1;
		public var bottomRightCornerRadius:Number = -1;
		protected var roundedMask:UIComponent;
		
		public function RoundedBitmapImage()
		{
			super();
			roundedMask = new UIComponent();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			roundedMask.graphics.clear();
			roundedMask.graphics.beginFill(0x000000);
			
			roundedMask.graphics.drawRoundRectComplex(0, 0, unscaledWidth, unscaledHeight, 
				calculateCornerRadius(topLeftCornerRadius),
				calculateCornerRadius(topRightCornerRadius),
				calculateCornerRadius(bottomLeftCornerRadius),
				calculateCornerRadius(bottomRightCornerRadius));
			roundedMask.graphics.endFill();
			this.mask = roundedMask;
			
		}
		
		private function calculateCornerRadius(radius:Number):Number {
			return radius != -1 ? radius : (cornerRadius == -1 ? 0 : cornerRadius);
		}
		
	}
}