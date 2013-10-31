package com.javapaul.load {
import flash.display.MovieClip;
import flash.events.EventDispatcher;
import org.osmf.media.MediaPlayerSprite;
import org.osmf.media.URLResource;


public class LoadVideo extends EventDispatcher{
    private var url:String;
    private var container:MovieClip;
    private var mediaPlayerSprite:MediaPlayerSprite;


    public function LoadVideo() {
        mediaPlayerSprite = new MediaPlayerSprite();


    }
    public function config(_url:String, _container:MovieClip):void{
        this.url = _url;
        this.container = _container;

        var urlResource:URLResource = new URLResource(this.url);
        mediaPlayerSprite.media = mediaPlayerSprite.mediaFactory.createMediaElement(urlResource);
        mediaPlayerSprite.width = container.width;
        mediaPlayerSprite.height = container.height;

        container.addChild(mediaPlayerSprite);


    }



}
}
