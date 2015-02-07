int MY_LED1 = D0;
int MY_LED2 = D1;

void setup() {
    pinMode(MY_LED1, OUTPUT);
    pinMode(MY_LED2, OUTPUT);

}

void loop() {

    //digitalWrite(MY_LED1,0);
    digitalWrite(MY_LED2,0);
    delay(1000);
    //digitalWrite(MY_LED1,1);
    digitalWrite(MY_LED2,1);
    delay(1000);
}
