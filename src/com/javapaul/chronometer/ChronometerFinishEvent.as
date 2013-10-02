package com.javapaul.chronometer
{
	import flash.events.Event;
	
	public class ChronometerFinishEvent extends Event
	{
		public static const FINISH:String = "FINISH";
		public var isFinish:Boolean;
		public function ChronometerFinishEvent(type:String, _isFinish:Boolean)
		{
			super(type);
			isFinish = _isFinish;
		}
	}
}