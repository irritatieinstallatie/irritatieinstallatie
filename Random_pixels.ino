#include <TVout.h>
TVout TV;

void setup() {
  TV.begin(PAL, 128, 96);
}

void loop() {
  int mic = analogRead(A0);
  
  for (int i = 0; i < 1; i++) {
    int x = random(127);
    int y = random(95);

    if (mic >= random(112, 128)) {
      TV.draw_rect(x, y, 1, 1, WHITE);
    } else {
      TV.draw_rect(x, y, 1, 1, BLACK);
      TV.clear_screen();
    }
  }
}