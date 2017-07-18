/********************
* Surface Class         *
********************/
class Surface {
  
  /**************
  * Variables   *
  **************/
  float bounceAbsorptionFactor; 
  float rollingResistanceFactor;
  
  /**************
  * Constructor *
  ***************/
  Surface(float bounceAbsorptionFactor, float rollingResistanceFactor) {
    this.bounceAbsorptionFactor = bounceAbsorptionFactor;
    this.rollingResistanceFactor = rollingResistanceFactor;
  }
  
}