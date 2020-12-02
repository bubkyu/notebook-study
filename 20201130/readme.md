# jQuery 란???

1. 자바스크립트의 생산성을 향상시켜주는 자바스크립트 라이브러리 이다.

2. 라이브러리란 자주 사용되는 로직들을 재활용, 유통 가능하도록 만든 로직들의 묶음을 의미한다.

3. 자바스크립트의 세계에는 많은 라이브러리들이 있다.
    - prototype, jQuery, YUI 등등 이 있다.

### 정리해서 
엘리먼트를 선택하는 강력한 방법과
선택된 엘리먼트들을 효율적으로 제어할 수 있는 다양한 수단을 제공하는 자바스크립트 라이브러리 이다.


# jQuery 특징

1. html+CSS+javascript 를 통합한 하나의 라이브러리
2. 굉장히 쉬운 접근방법을 제공한다. --> 전체 처리 속도 감소.
3. 모든 javascript 문법은 그대로 사용 가능.
4. 대수문자 구별,
5. "OR" 는 구별하지 않음.
6. 라이브러를 사용하는 방법
   1. CDN
   2. 라이브러리를 해당 프로젝트내에 복사해서 사용.
7. jQuery 는 모든것이 함수화되어 있기 때문에 함수에 대한 이해가 좋을수록 jQuery 의 이해도가 높아질 수 있다.


    ex) id = 'abc' 인 요소를 선택
```javascript        
        javascript : var id = document.getElementById('abc');
        javascript funciont :
            var getID = function(id){
                return document.getElementById(id)'
            }
            var id = getID('abc');  
    jquery : var id = $('#abc');
```
8. http://www.jquery.com


# 
CSS
id : #ele {...} --> $(ele).css(key, value)
class : .ele

#ele > ele
#ele ele
#ele[]


# DOM(Document Object Model)

- HTML을 트리구조로 표현한 것이 DOM 이다.

- 동일한 문서를 표현하고, 저장하고, 조작하는 방법을 제공한다.
- 웹 페이지의 객체 지향 표현이며, 자바스크립트와 같은 스크립팅 언어를 이용해 DOM 을 수정 할 수 있다.
- W3C DOM, WHATWG DOM 표준은 대부분의 브라우저에서 DOM 을 구현하는 기준이다.


 