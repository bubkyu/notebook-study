
# Scope 란???

1. 우리말로 번역하면 "범위" 이라는 뜻을 가지고 있다.
  즉, "변수에 접근할 수 있는 범위" 라고 할 수 있다.
2. javascirpt 에서는 Scope가 2가지 타입이 있다.
   1. global(전역) - 전역에 선언되어있어 어느곳에서도 해당 변수에 접근 할 수 있는 의미.
   2. local(지역) - 해당 지역에서만 접근할 수 있어 지역을 벗어난 곳에선 접근을 할 수 없다.

자바 스크립트에서 함수를 선언하면, 함수를 선언 할 때마다 새로운 스코프를 생성한다. 그러므로 함수 몸체에 선언한 변수를 해당 함수 몸체 안에서만 접근 할 수 있다.
이걸 함수 스코프(function-scoped) 라고 한다.

## 함수 스코프(function-scoped)
```javascript
var a = 1; // 전역 스코프

function print(){ // 지역(함수) 스코프
    var a = 111;
    console.log(a);
}

print();   /// 111출력

console.log(a); // 1 출력

```

print 함수에서 console.log(a); 는 a를 출력하기 위해 자신의 함수 스코프 안에 변수 a가 있는지 찾아본다. 그러면 var a = 111; 을 찾아내면 111을 console 에 출력하고 함수는 역할 수행을 한다.

```javascript
var a = 1; // 전역 스코프

function print(){ // 함수 스코프
    console.log(a);
}
print();    // 1
```

만약에 print 함수 안에 var a = 111; 을 지워도, Scope Chain에 의해 Scope에서 사용하고자 하는 변수가 없다면 Scope Chain을 통해 해당 변수를 찾는다.

## 블럭 스코프(block-scope)

블럭(block) 이란 중괄호로 둘러싸인 부분을 블럭이라 한다. 함수를 선언할 때 중괄호로 함수 본문을 둘러싸게 되는데 이부분을 블럭이라고 할 수 있다.

```javascript
function print(){   // 함수 블럭
    console.log(a);
}
{   //블럭
    const a = '1';
    }
```