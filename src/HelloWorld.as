package
{
  import flash.display.*;
  import flash.text.*;

  [SWF(width=240, height=240, backgroundColor=0xFFFFFF)]
  public class HelloWorld extends Sprite
  {
    public function HelloWorld()
    {
      var textField:TextField = new TextField();
      textField.text = "Hello, world!";
      addChild(textField);
    }
  }
}