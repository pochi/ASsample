package
{
    import flash.display.*;

    // mxmlc -debug=true EmbedImageEx.as -static-link-runtime-shared-libraries=true
    [SWF(width=240, height=240, backgroundColor=0xFFFFFF)]
    public class EmbedImageEx extends Sprite {
        [Embed(source='sample.swf')]
        private var SWF_FILE:Class;

        [Embed(source='sample.gif')]
        private var GIF_FILE:Class;

        public function EmbedImageEx() {
            var swfFile:Sprite = new SWF_FILE();
            swfFile.x = 50;
            swfFile.y = 120;
            addChild(swfFile);

            var gifFile:Bitmap = new GIF_FILE();
            gifFile.x = 120;
            gifFile.y = 50;
            addChild(gifFile);
        }
    }
}