/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 31/10/13
 * Time: 11:24 AM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.connect.socialmedia {
import flash.display.Loader;
import flash.display.MovieClip;
import flash.events.Event;
import flash.net.URLRequest;
import flash.system.Security;

public class Youtube {


    public function Youtube() {

    }

    public function loadVideo(url:String, container:MovieClip){

        Security.allowDomain("www.youtube.com");

        var object:Object;

        var loader:Loader = new Loader();
        loader.load(new URLRequest("http://www.youtube.com/apiplayer?version=3"));
        loader.contentLoaderInfo.addEventListener(Event.INIT, loader_handlerInit);

        function loader_handlerInit(event:Event):void{
            container.addChild(loader);
            object = loader.content;
            object.addEventListener("onReady", onPlayerReady);
        }

        function onPlayerReady(e:Event):void{
            object.setSize(container.width,container.height);
            object.cueVideoById("ucy56nR69IA",0);
        }


    }
}
}
