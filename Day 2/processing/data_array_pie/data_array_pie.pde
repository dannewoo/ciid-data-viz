// Data set as an array of numbers
int[] numbers = { 50, 100, 300 };

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  // Find the total of all the values in the 
  // array to map the pie to 360 degrees.
  float total = 0;
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i]; 
  }
  
  // Loop through all the numbers and create a bar for each number
  float diameter = 300;
  float lastAngle = 0;
  for (int i = 0; i < numbers.length; i++) {
    // Mapping the values to not go over 360 degrees
    float n = map(numbers[i], 0, total, 0, 360);
    float c = map(n, 0, max(numbers), 0, 100);
    fill(0, 100, c);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(n));
    lastAngle += radians(n);
  }
}