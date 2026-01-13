//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(900, 700); 
}

//🎯Variable Declarations Go Here

    var x = 100
    var sunSize = 150
    var dolphinX = 64
    var leftX = 288
    

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
   
  //sun
  ellipse(x, x, sunSize, sunSize);
  line(37, 165, 20, 181);
  line(74, 185, 68, 208);
  line(124, 188, 131, 207);
  line(166, 164, 183, 178);
  line(190, 127, 216, 137);
  line(198, 93, 228, 97);
  line(191, 62, 216, 54);
  line(169, 31, 190, 18);

  //dolphin
  ellipse(dolphinX, 397, 80, 40);
  triangle(dolphinX - 7, 376, dolphinX - 16, 357, dolphinX + 13, 378);
  ellipse(dolphinX + 25, 391, 10, 10);
  arc(dolphinX - 4, 410, 15, 30, radians(20), radians(160));
  arc(dolphinX + 6, 414, 15, 30, radians(0), radians(180));
  triangle(dolphinX - 40, 397, dolphinX - 56, 375, dolphinX - 55, 394);
  triangle(dolphinX - 40, 400, dolphinX - 51, 422, dolphinX - 55, 402);
  rect(133, 624, 160, 70);

  //person
  ellipse(162, 657, 40, 40);
  line(182, 656, 225, 656);
  line(194, 637, 207, 656);
  line(194, 678, 207, 656);
  line(245, 644, 225, 656);
  line(245, 676, 225, 656);

//cloud
  ellipse(leftX, 150, 126, 97);
  ellipse(leftX+62, 150, 70, 60);
  ellipse(leftX-62, 150, 70, 60);






  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)

    dolphinX = mouseX
}
