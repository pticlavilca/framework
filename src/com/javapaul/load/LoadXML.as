package com.javapaul.load {
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.EventDispatcher;
	
	public class LoadXML extends EventDispatcher{
		private var urlLoader:URLLoader;
		public function LoadXML(url:String) {
			urlLoader = new URLLoader();
			addDispatcher(urlLoader);
			urlLoader.load(new URLRequest(url));
		}
		public function addDispatcher(ieventdispatcher:IEventDispatcher)
			:void{
				ieventdispatcher.addEventListener(Event.COMPLETE, handlerComplete);
			}
		public function handlerComplete(event:Event)
			:void{
		
				dispatchEvent(new LoadXMLEvent(LoadXMLEvent.LOAD_COMPLETE,XML(event.target.data),true));
			}
	}
	
}
