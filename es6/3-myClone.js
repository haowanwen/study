let obj = {};
let obj1 = {
	name:'zhangsan',
	age:12,
	friends:[1,2,3],
	count:{
		tim:'2019-09-09'
	}
};
let obj2 = {
	name:'lisi',
	gender:'男',
	sayName:function(){}
};
let obj3 = {
	color:'red',
	weight:'100'
};
function myClone(target,...tail){
	//tail是一个数组,里面是对象
	tail.forEach(function(item){
		//item 是一个一个对象
		for(let key in item){
			/*if((typeof item[key]) == 'function'){
				// console.log(JSON.stringify(item[key]));
				// target[key] = JSON.parse(JSON.stringify(item[key]));//函数不能使用JSON转,无法处理
				target[key] = item[key];
			}*/
			/*if(Array.isArray(item[key])){
				target[key] = JSON.parse(JSON.stringify(item[key]));
			}*/
			if(Array.isArray(item[key]) || item[key].constructor===Object){
				target[key] = JSON.parse(JSON.stringify(item[key]));
			}
			else{
				target[key] = item[key];
			}
		};
	});
	return target;
}
myClone(obj,obj1,obj2);
console.log(obj);
console.log(obj.sayName===obj2.sayName);//true 证明是一个引用传递
console.log(obj.friends===obj2.friends);//false 证明不是一个引用传递
console.log(obj.count===obj2.count);//false 证明不是一个引用传递

//引用数据类型都直接或者间接的继承自Object
/*let arr = [];
console.log(arr instanceof Object);//true
let fun = function(){}
console.log(fun instanceof Object);//true

console.log(arr.constructor);
console.log(fun.constructor);*/

