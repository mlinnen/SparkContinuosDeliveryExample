
int LED1 = D0;
int LED2 = D1;

void setup() {
    pinMode(LED1, OUTPUT);
    pinMode(LED2, OUTPUT);

}

void loop() {

    digitalWrite(LED1,0);
    delay(1000);
    digitalWrite(LED1,1);
    delay(1000);
}
