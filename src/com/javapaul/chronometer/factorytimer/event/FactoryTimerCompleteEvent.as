package com.javapaul.chronometer.factorytimer.event
{
	import flash.events.Event;
	
	public class FactoryTimerCompleteEvent extends Event
	{
		public static const COMPLETE:String ="COMPLETE";
		public var isComplete:Boolean;
		public function FactoryTimerCompleteEvent(type:String, _isComplete:Boolean)
		{
			super(type);
			isComplete = _isComplete;
		}
	}
}