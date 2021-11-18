void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
//  pinMode(12, OUTPUT);//TR2
  pinMode(D6, OUTPUT);//tesla
  pinMode(D7, OUTPUT);//TR1
//  pinMode(9, OUTPUT);//holostaya nozhka
}
long i=0;
// the loop function runs over and over again forever
void loop() {

 
  i++;
  if(i>250000){
  if(digitalRead(LED_BUILTIN) == HIGH)
  {
    digitalWrite(LED_BUILTIN, LOW); 
  digitalWrite(D6, HIGH);
  digitalWrite(D7, LOW);
  }
    else {
      digitalWrite(LED_BUILTIN, HIGH);
  digitalWrite(D6, LOW);
  digitalWrite(D7, HIGH);
    }
  
  i=0;
  }

}
