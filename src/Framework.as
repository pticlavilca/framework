package {

import flash.display.Sprite;
import flash.text.TextField;

public class Framework extends Sprite {
    public function Framework() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);
    }
}
}
