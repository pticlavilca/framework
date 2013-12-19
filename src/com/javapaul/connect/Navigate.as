/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 27/11/13
 * Time: 12:12 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.connect {
import flash.net.URLRequest;
import flash.net.navigateToURL;

public class Navigate {
    private var url:String;
    public function Navigate(_url:String) {
        this.url = _url;
        open();

    }
    private function open():void{
        navigateToURL(new URLRequest(url),"_blank");
    }

}
}
