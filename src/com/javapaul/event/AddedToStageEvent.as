package com.javapaul.event
{
	import flash.events.Event;
	
	public class AddedToStageEvent extends Event
	{
		public static const ADDED_TO_STAGE:String;
		public var isAdded:Boolean;
		
		public function AddedToStageEvent(type:String, _isAdded:Boolean)
		{
			super(type);
			this.isAdded = _isAdded;
		}
	}
}