package com.javapaul.load
{
	import flash.events.Event;
	
	public class LoadXMLEvent extends Event
	{
		public static const LOAD_COMPLETE:String = "COMPLETE_LOAD";
		public var xml:XML;
		public var isLoad:Boolean;
		
		public function LoadXMLEvent(_type:String, _xml:XML, _isLoad:Boolean)
			:void{
				super(_type);
				xml = _xml;
				isLoad = _isLoad;
			}
	}
}