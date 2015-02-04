
int LED = D0;

void setup() {
    pinMode(LED, OUTPUT);

}

void loop() {

    digitalWrite(LED,0);
    delay(1000);
    digitalWrite(LED,1);
}
