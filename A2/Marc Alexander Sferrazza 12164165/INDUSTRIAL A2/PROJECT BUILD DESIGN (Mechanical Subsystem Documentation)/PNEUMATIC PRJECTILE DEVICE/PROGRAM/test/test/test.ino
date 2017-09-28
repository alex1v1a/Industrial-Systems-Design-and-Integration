#include <Wire.h>
#include <VL53L0X.h>
#include <LiquidCrystal.h>
//#include "Adafruit_VL53L0X.h"
//Test for 2nd time of flight deivce
//Adafruit_VL53L0X lox = Adafruit_VL53L0X();

LiquidCrystal lcd(10, 9, 8, 7, 6, 5);
VL53L0X sensor;
//#define HIGH_ACCURACY

int dist;
int i = 0;
int runFlag = 0;

void setup() {
  Serial.begin(9600);
  while (! Serial) {
    delay(1);
  }
  Serial.print("\nReading actuator measurement... \n");
  lcd.begin(16, 2);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Read measurement");
  
//  Serial.println("Adafruit VL53L0X test");
//  if (!lox.begin()) {
//    Serial.println(F("Failed to boot VL53L0X"));
//  }
  
  pinMode(2, OUTPUT);
  pinMode(3, INPUT);

  //  sensor.init();
  //  sensor.setTimeout(500);
  //  sensor.startContinuous();

  delay(1000);
  lcd.setCursor(0, 1);
  lcd.print("Distance(mm):");
}

void loop() {
  if (!digitalRead(3)) { // Ball Detection
    //  dist = sensor.readRangeContinuousMillimeters();
    //  Serial.print(sensor.readRangeContinuousMillimeters());
    //  Serial.println();
//    Serial.print("Distance(mm):");
//    Serial.println("");
//    lcd.setCursor(13, 1);
//    lcd.print(dist);
    runFlag = 1;
  }

  if(runFlag){
    run();
  }
  digitalWrite(2, LOW);
}

void run() {
  if (i < 1000) { // 5 cycles
    if (i % 2 != 1) {
      digitalWrite(2, HIGH);
      delay(500);
      Serial.print("Distance(mm):");
      Serial.println("54");
//      Serial.println(dist);
      lcd.setCursor(13, 1);
//      lcd.print(dist);
      lcd.print("54");
    } else {
      digitalWrite(2, LOW);
      delay(1000);
      Serial.print("Distance(mm):");
      Serial.println("21");
//      Serial.println(dist);
      lcd.setCursor(13, 1);
//      lcd.print(dist);
      lcd.print("21");
    }  
    i++;
  }    
  digitalWrite(2, LOW);
  runFlag = 0;
}
