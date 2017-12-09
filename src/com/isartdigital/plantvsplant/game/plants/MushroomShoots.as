package com.isartdigital.plantvsplant.game.plants 
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Allan
	 */
	public class MushroomShoots extends MovieClip
	{
		
		public function MushroomShoots() 
		{
			super();
		}
		
		public function move():void 
		{
			x += speed;
		}
		
	}

}