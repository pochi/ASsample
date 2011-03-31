package
{
    import flash.display.*;

    [SWF(width=240, height=240, backgroundColor=0xFFFFFF)]
    public class ShapeEx extends Sprite {
        public function ShapeEx() {
            var line:Shape = makeLine(0,0,0,40,0xff3333);
            line.x = 25;
            line.y = 3;
            addChild(line);

            var plX:Array = [0, 30, 10, 40, 0];
            var plY:Array = [0, 5, 20, 35, 40];
            var polyline:Shape = makePolyLine(plX, plY, 0xff3333);
            polyline.x = 55;
            polyline.y = 20;
            addChild(polyline);

            var rect:Shape = makeRect(40, 40, 0x55ff55);
            rect.x = 5;
            rect.y = 55;
            addChild(rect);

            var rrect:Shape = makeRoundRect(40,40,20,0x55ff55);
            rrect.x = 55;
            rrect.y = 55;
            addChild(rrect);

            var circle:Shape = makeCircle(20, 0x55ff55);
            circle.x = 125;
            circle.y = 75;
            addChild(circle);
        }

        private function makeLine(x0:int, y0:int, x1:int, y1:int, color:uint):Shape {
            var line:Shape = new Shape();
            line.graphics.lineStyle(0, color);
            line.graphics.moveTo(x0, y0);
            line.graphics.lineTo(x1, y1);
            return line
        }

        private function makePolyLine(x:Array, y:Array, color:uint):Shape {
            var i:int;
            var line:Shape = new Shape();
            line.graphics.lineStyle(0, color);
            line.graphics.moveTo(x[0], y[0]);
            for(i = 1; i < x.length; i++) {
                line.graphics.lineTo(x[i], y[i]);
            }
            return line
        }

        private function makeRect(w:uint, h:uint, color:uint):Shape {
            var rrect:Shape = new Shape();
            rrect.graphics.beginFill(color);
            rrect.graphics.lineStyle(0, 0x000000);
            rrect.graphics.drawRect(0,0,w,h);
            rrect.graphics.endFill();
            return rrect
        }

        private function makeRoundRect(w:int, h:int, ew:uint, color:uint):Shape {
            var rrect:Shape = new Shape();
            rrect.graphics.beginFill(color);
            rrect.graphics.lineStyle(0, 0x0000000);
            rrect.graphics.drawRoundRect(0,0,w,h,ew);
            rrect.graphics.endFill();
            return rrect
        }

        private function makeCircle(r:uint, color:uint):Shape {
            var circle:Shape = new Shape();
            circle.graphics.beginFill(color);
            circle.graphics.lineStyle(0, 0x000000);
            circle.graphics.drawCircle(0,0,r);
            circle.graphics.endFill();
            return circle
        }

    }

}