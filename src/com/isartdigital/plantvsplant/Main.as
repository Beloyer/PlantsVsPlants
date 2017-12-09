package com.isartdigital.plantvsplant
{
	
	import com.isartdigital.plantvsplant.game.plants.Mushroom;
	import com.isartdigital.plantvsplant.game.plants.Plants;
	import com.isartdigital.plantvsplant.game.sprites.Fence;
	import com.isartdigital.plantvsplant.game.sprites.FertileGround;
	import com.isartdigital.plantvsplant.game.sprites.Ground;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Main extends MovieClip
	{
		public const NB_LINE:int = 6;
		public const NB_COLUMN:int = 13;
		public var offsetGroundX:int = 0;
		public var offsetGroundY:int = 0;
		public const GROUND_WIDTH:int = 80;
		public const GROUND_HEIGHT:int = 120;
		
		public function Main()
		{
			super();
			createLevel();
			var mushmush:Mushroom = new Mushroom();
			mushmush.y = stage.stageHeight / 2;
			addChild(mushmush);
			addEventListener(Event.ENTER_FRAME, gameloop);
		}
		
		public function gameloop(pEvent:Event):void
		{
			for (var i = Plants.list.length - 1; i >= 0; i--)
			{
				Plants.list[i].move();
			}
		}
		
		public function createLevel():void
		{
			offsetGroundX = GROUND_WIDTH / 2;
			offsetGroundY = GROUND_HEIGHT / 2;
			
			for (var j:int = 0; j < NB_LINE; j++)
			{
				for (var i:int = 0; i < NB_COLUMN; i++)
				{
					if (i == 0 || i == NB_COLUMN - 1)
					{
						var fertileground:FertileGround = new FertileGround();
						var fence:Fence = new Fence();
						addChild(fence);
						addChild(fertileground);
						fence.x = offsetGroundX + stage.stageWidth / 8;
						fence.y = offsetGroundY + GROUND_HEIGHT + stage.stageHeight / 4;
						fertileground.x = offsetGroundX + stage.stageWidth / 8;
						fertileground.y = offsetGroundY + stage.stageHeight / 4;
						offsetGroundX += GROUND_WIDTH;
						
					}
					
					else
					{
						fence = new Fence();
						var ground:Ground = new Ground();
						addChild(fence);
						addChild(ground);
						fence.x = offsetGroundX + stage.stageWidth / 8;
						fence.y = offsetGroundY + GROUND_HEIGHT + stage.stageHeight / 4;
						ground.x = offsetGroundX + stage.stageWidth / 8;
						ground.y = offsetGroundY + stage.stageHeight / 4;
						offsetGroundX += GROUND_WIDTH;
					}
					
				}
				offsetGroundX = GROUND_WIDTH / 2;
				offsetGroundY += GROUND_HEIGHT * 2;
			}
		
		}
	}
}
