int last = 0;
int m = 0;
int seconds = 0;
int minutes = 0;

void draw () {
  m = millis()-last;
  if (millis() > last + 1000){
    last = millis();
    //Something 5 seconds
    seconds += 1;
  }
  if (seconds == 60) {
    minutes += 1;
    seconds = 0;
  }
  background(0);
  println( minutes + "m " + seconds + "s ");
  text(minutes + "m " + seconds + "s ",40,40);  
}