//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(900, 700); 
}

//🎯Variable Declarations Go Here

    var x = 100
    var sunSize = 150
    var dolphinX = 64
    var leftX = 365
    var rightX = 621
    

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
   
  stroke(0,0,0)
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
 
 noStroke()
//clouds
  ellipse(leftX, 86, 126, 97);
  ellipse(leftX+62, 86, 70, 60);
  ellipse(leftX-62, 86, 70, 60);

  ellipse(rightX, 86, 126, 97);
  ellipse(rightX+62, 86, 70, 60);
  ellipse(rightX-62, 86, 70, 60);
  
  stroke(0, 0, 0);
  strokeWeight(4)
  //beachNet
  line(536, 689, 536, 554);
  line(726, 689, 726, 554);
  line(536, 554, 725, 554);
  line(536, 623, 723, 623);
  line(555, 623, 555, 554);
  line(575, 623, 575, 554);
  line(595, 623, 595, 554);
  line(615, 623, 615, 554);
  line(635, 623, 635, 554);
  line(655, 623, 655, 554);
  line(675, 623, 675, 554);
  line(695, 623, 695, 554);
  line(715, 623, 715, 554);
  line(536, 575, 726, 575);
  line(536, 595, 726, 595);
  line(536, 615, 726, 615);
  strokeWeight(1)

  //beachball
  ellipse(412, 653, 50, 50);



  dolphinX = dolphinX + 1
  sunSize /= 99/100

  if(sunSize > 200){
    sunSize = 150;
  }

  leftX = leftX + 1
  rightX = rightX - 1

  

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

  
}
