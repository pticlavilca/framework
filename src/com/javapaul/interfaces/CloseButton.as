/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 27/11/13
 * Time: 12:41 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.interfaces {
import flash.events.MouseEvent;
import flash.system.fscommand;

public class CloseButton extends Button{
    public function CloseButton() {
        this.addEventListener(MouseEvent.CLICK, clickHandler)
    }

    private function clickHandler(event:MouseEvent):void {
        fscommand("quit");
    }
}
}
