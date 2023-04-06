//float velocidade = 50;
//float tempo = 1;
//float deslocamento = velocidade*tempo;
//prfloatln(deslocamento);
//float d = MRU(50,1);
//prfloatln(d);

final float intervalo = 1.0/60;

float tAtual = 0;
float vAtual = 50;
float dAtual;


void setup() {


  // o homem que viu o infinito


  //  for (float t=0; t<10; t++) {
  //    float d = MRU(50, t);
  //    prfloatln(t,d);
  //  }

  //frameRate(10);
  size(500, 100);
}

float MRU(float velocidade, float tempo) {
  float deslocamento;
  deslocamento = velocidade*tempo;
  return(deslocamento);
}

void draw() {
  background(255);
  mostraMundo();
  dAtual = MRU(vAtual, tAtual);
  println(tAtual, dAtual);
  circle(height+400-dAtual, 50, 10);
  tAtual = tAtual+intervalo;
}


void mostraMundo(){
  for(int x=0; x<20;x++){
    for(int y=0;y<20;y++){
      square(x*50,y*50,50);
    }
  }
}
