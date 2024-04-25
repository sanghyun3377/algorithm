/*
문제 설명
정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.

제한사항
0 ≤ numbers의 원소 ≤ 10,000
2 ≤ numbers의 길이 ≤ 100
입출력 예
numbers /	result
[1, 2, 3, 4, 5] /	20
[0, 31, 24, 10, 1, 9] /	744
*/
List<int> numbers1 = [1, 2, 3, 4, 5];
List<int> numbers2 = [0, 31, 24, 10, 1, 9];

int solution(List<int> numbers) {
  int x;
  int y;
  numbers.sort();
  x = numbers[numbers.length - 1];
  y = numbers[numbers.length - 2];
  return x * y;
}

int solution2(List<int> numbers) {
  int x = 0;
  int y = 0;
  for (int number in numbers) {
    if (x < number) {
      y = x;
      x = number;
    }
  }
  return x * y;
}

void main() {
  print(solution(numbers1));
  print(solution(numbers2));

  print(solution2(numbers1));
  print(solution2(numbers2));
}
