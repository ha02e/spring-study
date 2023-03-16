var XHR=null;

//XMLHttpRequest 객체 구하기
function getXHR(){ 
	if(window.ActiveXObject){ //IE 브라우저
	
		return new ActiveXObject('Msxml2.XMLHTTP');
		
	}else if(window.XMLHttpRequest){ //크롬,파이어폭스,사파리 같은 브라우저
	
		return new XMLHttpRequest();
		
	}else{ //커스텀 브라우저
		return null;
	}
}


function sendRequest(url,param,method,callback){
	XHR=getXHR(); //getXHR 할당받기
	
	var newMethod=method?method:'GET'; //유효성 검사 method를 입력하지 않으면 기본값을 get으로 세팅
	if(newMethod != 'GET' && newMethod != 'POST'){ //유효성 검사 get/post 이외 다른 값을 입력했을 때 get으로 세팅
		newMethod='GET';
	}
	
	//전송방식에 따라 url 전달 방식이 다르다.
	//GET방식은 param이 존재하지 않고 POST방식은 존재한다.
	var newParam=(param==null || param=='')?null:param;
	
	var newUrl=url;
	if(newMethod=='GET' && newParam!=null){ //GET방식이면서 param 값이 있으면
		newUrl=newUrl+'?'+newParam;
	}
	
	XHR.onreadystatechange=callback;
	XHR.open(newMethod,newUrl,true);
	XHR.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XHR.send(newMethod=='POST'?newParam:null);	
}