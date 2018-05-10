PImage johnny;

void setup() {
  size(1280, 720);
  background(255);
  frameRate(29.97);
  johnny = loadImage("johnny.jpg");
  image(johnny, 0, 0);
  //background(0);
}


void draw() {
  noFill();
  stroke(random(255), random(255), random(255), 255);
  strokeWeight(.5);
  beginShape(TRIANGLE_STRIP);
  vertex(658.56683, 239.42172);//FOREHEAD_GLABELLA
  vertex(610.61926, 263.16248);//left_eye
  vertex(580.2026, 239.4372);//left_of_left_eyebrow
  vertex(608.43805, 228.00111);//LEFT_EYEBROW_UPPER_MID
  vertex(635.968, 239.48288);//right_of_left_eyebrow
  vertex(611.0385, 255.37067);//left_eye_top_boundary
  vertex(628.7389, 263.7445);//LEFT_EYE_RIGHT_CORNER
  vertex(609.9294, 268.6977);//LEFT_EYE_BOTTOM_BOUNDARY
  vertex(592.10004, 262.31808);//LEFT_EYE_LEFT_CORNER
  vertex(609.1372, 261.90683);//LEFT_EYE_PUPIL
  vertex(657.6148, 258.44357);//midvertex_between_eyes
  vertex(703.4789, 265.57898);//right_eye
  vertex(680.74176, 241.70784);//left_of_right_eyebrow
  vertex(708.5478, 232.40764);//RIGHT_EYEBROW_UPPER_MID
  vertex(734.18304, 246.21408);//right_of_right_eyebrow
  vertex(703.32947, 259.40295);//RIGHT_EYE_TOP_BOUNDARY
  vertex(720.6798, 267.77722);//RIGHT_EYE_RIGHT_CORNER
  vertex(702.59735, 272.33514);//RIGHT_EYE_BOTTOM_BOUNDARY
  vertex(684.27765, 265.9885);//RIGHT_EYE_LEFT_CORNER
  vertex(703.8365, 266.05194);//RIGHT_EYE_PUPIL
  vertex(650.40735, 420.77908);//CHIN_GNATHION
  vertex(554.377, 369.20514);//CHIN_LEFT_GONION
  vertex(743.7322, 377.54526);//CHIN_RIGHT_GONION
  vertex(657.6148, 258.44357);//midvertex_between_eyes
  vertex(658.42944, 313.1031);//nose_tip
  vertex(653.6986, 348.11377);//upper_lip
  vertex(652.3156, 376.35535);//lower_lip
  vertex(617.4869, 360.48334);//mouth_left
  vertex(686.8487, 363.0946);//mouth_right
  vertex(653.08215, 360.4852);//mouth_center
  vertex(676.93005, 321.74963);//nose_bottom_right
  vertex(634.0908, 318.61188);//nose_bottom_left
  vertex(655.2766, 327.48434);//nose_bottom_center
  vertex(610.61926, 263.16248);//left_eye
  vertex(703.4789, 265.57898);//right_eye
  vertex(545.0696, 312.02988);//LEFT_EAR_TRAGION
  vertex(754.5145, 321.23444);//RIGHT_EAR_TRAGION
  vertex(650.40735, 420.77908);//CHIN_GNATHION
  vertex(554.377, 369.20514);//CHIN_LEFT_GONION
  vertex(743.7322, 377.54526);//CHIN_RIGHT_GONION
  vertex(609.1372, 261.90683);//LEFT_EYE_PUPIL
  vertex(617.4869, 360.48334);//mouth_left
  vertex(686.8487, 363.0946);//mouth_right
  vertex(653.08215, 360.4852);//mouth_center
  endShape();
}
