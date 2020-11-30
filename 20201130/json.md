# JSON(JavaScript Object Notation) 이란???

- 조금 더 쉽게 데이터를 교환하고 저장하기 위하여 만들어진 텍스트 기반의 데이터 교환 표준이다.


# JSON 표기방법

1. KEY:VALUE => {KEY : VALUE, KEY:VALUE , ...}
```css
$('#index>#footer').css({
		'height' 			: '100px',
		'background-color' 	: '#bbb',
		'text-align' 		:'center',
		'line-height' 		: '100px'
	});
```

2. 배열 => [v1, v2, v3,....]

```css
{
    "student":{
        "name"  : "법규",
        "age"   :  15,
        "school" : "KH"
        "techer" : {
            "techerName" : "선생님",
            "phone" : "0123456789"
        }
    }
}
```

3. 혼합형 : 배열안에 map
            [{},{},....]
            map 안에 배열
            {key : [,,,,]} 



index.jsp?inc=./jquery/filter.jsp