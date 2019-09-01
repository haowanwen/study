//对象解构
let {a,b} = {a:1,b:2};
console.log(a,b);

{
	/*let {name:myName,age:myAge} = {
		name:'zhangsan',
		gender:'男',
		age:12
	}
	console.log(myName,myAge);//zhangsan 12*/
	let {name:myName,age:myAge,address:myAddress='江苏'} = {
		name:'zhangsan',
		gender:'男',
		age:12
	}
	console.log(myName,myAge,myAddress);//zhangsan 12 江苏
}