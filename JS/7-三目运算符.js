 var result = 5>3?2:0;
console.log(result); //2

var a = 'hello';
a?console.log('123'):console.log('345');  //123
//三目运算符的高级使用
a?test():add(); //test
var handle = !a?test:add; 
handle();  //add
function test(){
	console.log('test');
}
function add(){
	console.log('add');
}




/*
if(a){
	console.log('123');
}else{
	console.log('345');
}*/


/*
var result;
if(5>3){
	result = 2;
}else{
	result = 0;
}
console.log(result);
*/




