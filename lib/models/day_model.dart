class DayModelUtils {
  final double buffer = 1.25;
  late String moduleName;
  late String features;
  late int numOfBE;
  late int numOfFE;
  late int numOfFS;

  // get BE with buffer
  double getbackEndWithBuffer() {
    return numOfBE * buffer;
  }

  // get BE with buffer
  double getfrontEndWithBuffer() {
    return numOfFE * buffer;
  }

  // get BE with buffer
  double getfullStackWithBuffer() {
    return numOfFS * buffer;
  }

  int gettotalBeforeBuffer() {
    return numOfBE + numOfFS + numOfFE;
  }
}
