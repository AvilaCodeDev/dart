void main(){
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];

  print('List original $numbers');
  print('List original ${numbers.length}');
  print('List original ${numbers[0]}');
  print('List original ${numbers.first}');

  final reversedNumbers = numbers.reversed;
  print("Itaerable: $reversedNumbers");
  print("List: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}");

  final numbersGreaterThan5 = numbers.where((num){
    return num > 5;
  });

  print('5> iterable: $numbersGreaterThan5');
  print('5> set: ${numbersGreaterThan5.toSet()}');

}