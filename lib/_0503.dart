/*
문자열 my_string이 매개변수로 주어집니다. my_string을 거꾸로 뒤집은 문자열을 return하도록 solution 함수를 완성해주세요.

제한사항
1 ≤ my_string의 길이 ≤ 1,000
입출력 예
my_string	return
"jaron"	"noraj"
"bread"	"daerb"
*/

String solution(String myString) {
  String answer = '';
  List spell = myString.split('');
  for (var i = spell.length - 1; i >= 0; i--) {
    answer += spell[i];
  }
  return answer;
}

void main() {
  print(solution("jaron"));
  print(solution("bread"));
}
