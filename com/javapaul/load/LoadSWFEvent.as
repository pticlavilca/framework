package com.javapaul.load
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class LoadSWFEvent extends Event
	{
		public static const LOAD_COMPLETE:String = "COMPLETE_LOAD";
		public var isLoad:Boolean;
		public var _class:Class;
		
		public function LoadSWFEvent(_type:String, _isLoad:Boolean, __class:Class)
		{
			super(_type);
			isLoad = _isLoad;
			this._class = __class;
			
		}
	}
}