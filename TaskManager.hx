import hxd.Key in K;

class TaskManager extends hxd.App {

var w1 : h2d.Bitmap;
var w2 : h2d.Bitmap;
var w3 : h2d.Bitmap;
var w4 : h2d.Bitmap;
var w5 : h2d.Bitmap;
var w6 : h2d.Bitmap;
var w7 : h2d.Bitmap;
var w8 : h2d.Bitmap;

var white : h2d.Tile;
var red : h2d.Tile;
var green : h2d.Tile;
var blue : h2d.Tile;
var yellow : h2d.Tile;
var orange : h2d.Tile;
var purple : h2d.Tile;
var brown : h2d.Tile;
var black : h2d.Tile;

var task_red : Int;
var task_green : Int;
var task_blue : Int;
var task_yellow : Int;
var task_orange : Int;
var task_purple : Int;
var task_brown : Int;
var task_black : Int;

var workers : Array<h2d.Bitmap>;

  override function init() {

    engine.backgroundColor = 0x202020;

    white = h2d.Tile.fromColor(0xFFFFFF, 16, 64);
    red = h2d.Tile.fromColor(0xFF0000, 16, 64);
    green = h2d.Tile.fromColor(0x00FF00, 16, 64);
    blue = h2d.Tile.fromColor(0x0000FF, 16, 64);
    yellow = h2d.Tile.fromColor(0xFFFF00, 16, 64);
    orange = h2d.Tile.fromColor(0xFFA500, 16, 64);
    purple = h2d.Tile.fromColor(0x800080, 16, 64);
    brown = h2d.Tile.fromColor(0x832C13, 16, 64);
    black = h2d.Tile.fromColor(0x000000, 16, 64);

    w1 = new h2d.Bitmap(white, s2d);
    w2 = new h2d.Bitmap(white, s2d);
    w3 = new h2d.Bitmap(white, s2d);
    w4 = new h2d.Bitmap(white, s2d);
    w5 = new h2d.Bitmap(white, s2d);
    w6 = new h2d.Bitmap(white, s2d);
    w7 = new h2d.Bitmap(white, s2d);
    w8 = new h2d.Bitmap(white, s2d);

    var workers : Array<h2d.Bitmap> = [w1, w2, w3, w4, w5, w6, w7, w8];

    var xpos = 1;
    var ypos = 1;
    for (worker in workers) {
      worker.x = xpos * 100 + 100;
      worker.y = ypos * 100 + 200;
      xpos += 1;
      if (xpos == 5) {
          xpos = 1;
          ypos += 1;
      }
    }

    var colour = 0;
    for (worker in workers) {
      colour += 1;
      if (colour == 1) {
        worker.tile = red;
      }
      if (colour == 2) {
        worker.tile = green;
      }
      if (colour == 3) {
        worker.tile = blue;
      }
      if (colour == 4) {
        worker.tile = yellow;
      }
      if (colour == 5) {
        worker.tile = orange;
      }
      if (colour == 6) {
        worker.tile = purple;
      }
      if (colour == 7) {
        worker.tile = brown;
      }
      if (colour == 8) {
        worker.tile = black;
      }
    }
    
  }

  override function update(dt : Float) {
  }

  static function main() {
    new TaskManager();
  }
}
