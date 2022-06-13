import ddf.minim.*;
import ddf.minim.analysis.*;
Minim m;
AudioPlayer player;
FFT fft;
Setting s;
void setup(){
  fullScreen();
  m = new Minim(this);
  // Load music
  player = m.loadFile("Axel Thesleff - Bad Karma.mp3", 1024);
  player.play();
  // Initialize audio analyzer
  fft = new FFT(player.bufferSize(), player.sampleRate());
  s = new Setting();
}

void draw(){
  s.Circle();
  s.Cursor();
  s.Wave();
}
void keyPressed()
{
  s.key();
}
void mousePressed()
{
  s.Line();
}
