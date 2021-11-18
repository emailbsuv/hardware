#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <EEPROM.h>

/* Установите здесь свои SSID и пароль */
const char* ssid = "NodeMCU";       // SSID
const char* password = "12345678";  // пароль

/* Настройки IP адреса */
IPAddress local_ip(192,168,1,1);
IPAddress gateway(192,168,1,1);
IPAddress subnet(255,255,255,0);

ESP8266WebServer server(80);

byte value;
byte duty;
int waitweb;

void setup() 
{

  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(D6, OUTPUT);
  pinMode(D7, OUTPUT);
  EEPROM.begin(512);
  value = EEPROM.read(0);
  duty = EEPROM.read(1);
  if(value == 0){value=65;}
  if(duty == 0){duty=50;}
  
  WiFi.softAP(ssid, password);
  WiFi.softAPConfig(local_ip, gateway, subnet);
  delay(100);
  
  server.on("/", handle_OnConnect);
  server.on("/frequp", handle_up);
  server.on("/freqdown", handle_down);
  server.on("/dutyup", handle_dutyup);
  server.on("/dutydown", handle_dutydown);
  server.on("/save", handle_save);
  server.onNotFound(handle_NotFound);
  
  server.begin();
}

void loop() 
{
  float v00 = (float)((float)value/(float)2.0);
  float v0 = float((float)((float)(v00)/(float)((float)100/(float)duty)));
  int v = int(v0);
  int v1 = int((float)((float)(v00) - (float)(v0)));
  waitweb = waitweb +1; 
  if(waitweb == 500){
    server.handleClient();
    waitweb=0;
    digitalWrite(LED_BUILTIN, !digitalRead(LED_BUILTIN)); 
  }
  digitalWrite(D6, HIGH);
  delayMicroseconds(v);
  digitalWrite(D6, LOW);
  delayMicroseconds(v1);  
  digitalWrite(D7, HIGH);
  delayMicroseconds(v);
  digitalWrite(D7, LOW);
  delayMicroseconds(v1);
}

void handle_OnConnect() 
{ 
  server.send(200, "text/html", SendHTML(value,0,duty)); 
}

void handle_up() 
{
  value = value + 1; if (value >147){value =30;}
  server.send(200, "text/html", SendHTML(value,0,duty)); 
}

void handle_down() 
{
  value = value - 1; if (value <30){value =147;}
  server.send(200, "text/html", SendHTML(value,0,duty));
}

void handle_dutyup() 
{
  duty = duty + 5; if (duty >90){duty =10;}
  server.send(200, "text/html", SendHTML(value,0,duty)); 
}

void handle_dutydown() 
{
  duty = duty - 5; if (duty <10){duty =90;}
  server.send(200, "text/html", SendHTML(value,0,duty));
}
void handle_save() 
{
  EEPROM.write(0, value);
  EEPROM.write(1, duty);
  if (EEPROM.commit()) {
    server.send(200, "text/html", SendHTML(value,value,duty));
  } else {
    server.send(200, "text/html", SendHTML(value,-1,duty));
  }
  delay(100);
}

void handle_NotFound()
{
  server.send(404, "text/plain", "Not found");
}

String SendHTML(uint8_t value,int saved, uint8_t duty)
{
  String ptr = "<!DOCTYPE html> <html>\n";
  ptr +="<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n";
  ptr +="<title>PushPull Control</title>\n";
  ptr +="<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}\n";
  ptr +="body{margin-top: 50px;} h1 {color: #444444;margin: 50px auto 30px;}\n";
  ptr +=".button {display: block;width: 80px;background-color: #1abc9c;border: none;color: white;padding: 13px 20px;text-decoration: none;font-size: 15px;margin: 0px auto 25px;cursor: pointer;border-radius: 4px;}\n";
  ptr +=".button-on {background-color: #1abc9c;}\n";
  ptr +=".button-on:active {background-color: #16a085;}\n";
  ptr +=".button-off {background-color: #34495e;}\n";
  ptr +=".button-off:active {background-color: #2c3e50;}\n";
  ptr +="p {font-size: 14px;color: #888;margin-bottom: 5px;}\n";
  ptr +="</style>\n";
  ptr +="</head>\n";
  ptr +="<body>\n";
  ptr +="<h1>PushPull Control</h1>\n";

  ptr +="<p>Freq DOWN</p><a class=\"button button-on\" href=\"/frequp\">DOWN</a>\n";
  ptr +="<p>Freq UP</p><a class=\"button button-off\" href=\"/freqdown\">UP</a>\n";
  ptr +="<p>Duty DOWN</p><a class=\"button button-on\" href=\"/dutydown\">DOWN</a>\n";
  ptr +="<p>Duty UP</p><a class=\"button button-off\" href=\"/dutyup\">UP</a>\n";
  ptr +="<p>SAVE</p><a class=\"button button-off\" href=\"/save\">SAVE</a>\n";
  ptr +="<p>Cur Freq: ";
  ptr += int(1000000/value);
  ptr += " Hz</p>\n";

  ptr +="<p>Cur Duty: ";
  ptr += int((float)((float)((float)value/(float)2.0)/(float)((float)100/(float)duty)));
  ptr += " / ";
  ptr += int((float)((float)((float)value/(float)2.0) - (float)((float)((float)value/(float)2.0)/(float)((float)100/(float)duty))));
  ptr += " </p>\n";

  if(saved > 0){
    ptr += "<p>SAVED Freq ";
    ptr += int(1000000/saved);
    ptr += " Hz</p>\n";  
  }
  if(saved == -1){
    ptr += "<p>SAVE Freq ";
    ptr += int(1000000/saved);
    ptr += " Hz filed!</p>\n";  
  }  
  ptr +="</body>\n";
  ptr +="</html>\n";
  return ptr;
}
