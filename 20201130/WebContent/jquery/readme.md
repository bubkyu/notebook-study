# jQuery 파일을 다운받아 로드하는 방법

- jQuery.com:http://jquery.com/download

- 이렇게 다운받은 제이쿼리 파일을 서버에 저장
다음 
script 태그를 웹 페이지의 head 태그 내에 삽입하면 된다.

```javascript

<head>
    <script src="/파일경로/제이쿼리파일명.js"></script>
</head>    
```

# CDN 을 이용하여 로드하는 방법

- CDN(Content Delivery Network)이란 웹 사이트의 접속자가 서버에서 콘텐츠를 다운받아야 할때, 자동으로 가장 가까운 서버에서 다운받도록 하는 기술이다.
- 이 기술을 이용하면 특정 서버에 트래픽이 집중되지 않고, 콘텐츠 전송 시간이 매우 빨라지는 장점이 있다.

## CDN
```javascript
1. jQuery.com CDN :
 <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

2. 구글 CDN       :
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

3. MS CDN         : 
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>

4. CDNJS CDN      : 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

5. jsDelivr CDN   : 
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>

```

