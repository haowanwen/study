//Object.assign() 对象的浅复制,对象的合并
let obj = {
	name:'zhangsan',
	friends:[],
	count:{}
};
//浅复制
// let obj2 = obj;
/*let obj2 = Object.assign(obj);
console.log(obj2 === obj); //true*/
//对象的合并
let obj2 = {
	name:'lisi',
	age:12
};

//深复制
let obj3 = Object.assign({},obj);
console.log(obj3 === obj);//false
//只能复制第一层,更深的引用类型不能复制
console.log(obj3.firends === obj.firends);//true
console.log(obj3.count === obj.count);//true

//对象的合并
let obj4 = {};
Object.assign(obj4,obj,obj2);
console.log(obj4);