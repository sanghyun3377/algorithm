/*
문자열 my_string이 매개변수로 주어질 때, my_string 안에 있는 숫자만 골라 오름차순 정렬한 리스트를 return 하도록 solution 함수를 작성해보세요.

제한사항
1 ≤ my_string의 길이 ≤ 100
my_string에는 숫자가 한 개 이상 포함되어 있습니다.
my_string은 영어 소문자 또는 0부터 9까지의 숫자로 이루어져 있습니다. - - -
입출력 예
my_string	result
"hi12392"	[1, 2, 2, 3, 9]
"p2o4i8gj2"	[2, 2, 4, 8]
"abcde0"	[0]
*/

List<String> solution(String myString) {
  List<String> answer = [];
  List<String> myStringList = [];
  myStringList = myString.split('');
  for (var i in myStringList) {
    if (i == '0' ||
        i == '1' ||
        i == '2' ||
        i == '3' ||
        i == '4' ||
        i == '5' ||
        i == '6' ||
        i == '7' ||
        i == '8' ||
        i == '9') {
      answer.add(i);
    }
  }
  answer.sort();
  return answer;
}

void main() {
  print(solution("hi12392"));
  print(solution("p2o4i8gj2"));
  print(solution("abcde0"));
}
