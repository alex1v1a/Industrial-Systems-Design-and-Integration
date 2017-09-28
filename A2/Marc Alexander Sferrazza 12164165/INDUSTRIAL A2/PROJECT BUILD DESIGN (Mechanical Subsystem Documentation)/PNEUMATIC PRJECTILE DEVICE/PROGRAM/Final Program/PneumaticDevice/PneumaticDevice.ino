#include <Wire.h>
#include <VL53L0X.h>
#include <LiquidCrystal.h>

// Initalise ports and vraribles
LiquidCrystal lcd(10, 9, 8, 7, 6, 5);
VL53L0X sensor;
int dist;
int i = 0;

void setup() {
  // Start reading in from serial
  Serial.begin(9600);
  Wire.begin();

  lcd.begin(16, 2);
  // wait until serial port opens for native USB devices
  while (! Serial) {
    delay(1);
  }
  // Ports setup for use and initialisation
  sensor.init();
  sensor.setTimeout(500);
  pinMode(2, OUTPUT);
//  pinMode(3, INPUT);

  // Read in measurement
  //  sensor.startContinuous();

  //Print Measurements to LCD
  Serial.print("\nReading a measurement... \n");
  // Line 1 LCD
  lcd.setCursor(0, 0);
  lcd.print("Read measurement");
  // Line 2 LCD
  lcd.setCursor(0, 1);
  lcd.print("Distance(mm):");
}

void loop() {
  // Print Distance to LCD
  dist = sensor.readRangeContinuousMillimeters();
  Serial.print("Distance(mm):");
  Serial.println(dist);
  // Update distance and overwright line 2
  lcd.setCursor(13, 1);
  lcd.print(dist);

  // Deploy the projectiles at given intervills ONLY when IR sensor detects obstruction
//  if (digitalRead(3) == 1) {
    if (i < 10) { // 5 cycles
      // Test Relay
      if (i % 2 != 1) {
        digitalWrite(2, HIGH);
        delay(500);
        lcd.setCursor(13, 1);
        lcd.print(dist);
      } else {
        digitalWrite(2, LOW);
        delay(1000);
        lcd.setCursor(13, 1);
        lcd.print(dist);
      }
      i++;
    }
//    i = 0;
//  }
}
