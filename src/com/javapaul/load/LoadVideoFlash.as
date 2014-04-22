/**
 * Created by Halion on 22/04/14.
 */
package com.javapaul.load {
import flash.display.MovieClip;
import flash.events.AsyncErrorEvent;
import flash.events.EventDispatcher;
import flash.events.NetStatusEvent;
import flash.events.VideoEvent;
import flash.media.Video;
import flash.net.NetConnection;
import flash.net.NetStream;

public class LoadVideoFlash extends EventDispatcher{

    private var url:String;
    private var container:MovieClip;
    private var video:Video;

    private var netConnection:NetConnection;
    private var netStream:NetStream;
    private var loop:Boolean;


    public function LoadVideoFlash(_url:String, _container:MovieClip, _loop:Boolean) {

        this.url = _url;
        this.container = _container;
        this.loop = _loop;
        init();

    }


    private function init():void{
        video = new Video();
        this.container.addChild(video);

        netConnection = new NetConnection();
        netConnection.connect(null);

        netStream = new NetStream(netConnection);
        netStream.addEventListener(NetStatusEvent.NET_STATUS, videoStatus);

        video.attachNetStream(netStream);

        netStream.addEventListener(AsyncErrorEvent.ASYNC_ERROR, netStream_asyncError);
    }

    private function videoStatus(event:NetStatusEvent):void {
        trace(event.info.code);

        switch (event.info.code){
            case "NetStream.Play.Stop" : {
                if(loop){
                    netStream.play(url);
                }
            }
        }

    }

    public function play():void{
        netStream.play(url);
    }




    public function setSize(w:Number, h:Number):void{
        video.width = w;
        video.height = h;
    }



    function netStream_asyncError(event:AsyncErrorEvent):void{

    }
}
}
