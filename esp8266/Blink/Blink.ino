void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
//  pinMode(12, OUTPUT);//TR2
  pinMode(11, OUTPUT);//tesla
  pinMode(10, OUTPUT);//TR1
//  pinMode(9, OUTPUT);//holostaya nozhka
}
long i=0;
// the loop function runs over and over again forever
void loop() {

  digitalWrite(11, HIGH);
  digitalWrite(11, LOW);

  
  i++;
  if(i>250000){
  if(digitalRead(LED_BUILTIN) == HIGH)
  {
    digitalWrite(LED_BUILTIN, LOW); 
    digitalWrite(10, LOW);
  }
    else {
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(10, HIGH);
    }
  
  i=0;
  }

}
