class Timer {
  float startTime;
  float currentTime;
  float lastTime;
  float MAX_Time;
  boolean isRunning = false;

  IAnimierbar k;
  float minValue;
  float maxValue;

  public Timer(float max) { // in millisekunden
    MAX_Time = max;
  }

  public Timer(float max, IAnimierbar k, float minValue, float maxValue) { // in millisekunden
    MAX_Time = max;
    this.k = k;
    this.minValue = minValue;
    this.maxValue = maxValue;
  }

  public void reset() {
    startTime = millis();
    currentTime = startTime;
    lastTime = startTime;
  }

  public void start() {
    reset();
    isRunning = true;
  }

  public void stop() {
    isRunning = false;
  }

  public float delta() {
    if (isRunning) {
      lastTime = currentTime;
      currentTime = millis();

      return (currentTime - lastTime);
    } else {
      return 0;
    }
  }

  public float tick() {
    if (isRunning) {
      currentTime = millis();
      isRunning = (currentTime - startTime) < MAX_Time;

      // was rufe ich hier auf ?
      animate(currentTime - startTime);
      return (currentTime - startTime);
    } else {
      animate(MAX_Time);
      return MAX_Time;
    }
  }

  public void animate(float time) {
    if (k != null) {
      k.update(time, 0, MAX_Time, minValue, maxValue);
    }
  }
}
