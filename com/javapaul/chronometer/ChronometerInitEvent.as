package com.javapaul.chronometer
{
	import flash.events.Event;
	
	public class ChronometerInitEvent extends Event
	{
		public static const INIT:String = "INIT";
		public var isInit:Boolean;
		public function ChronometerInitEvent(type:String, _isInit:Boolean)
		{
			super(type);
			isInit = _isInit;
		}
	}
}