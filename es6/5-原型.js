let obj = {name:'zhangsan'};
console.log(obj.__proto__ === Object.prototype);//true
console.log(Object.getPrototypeOf(obj)===Object.prototype);//true

let objPro = {
	toString(){
		return 'hello';
	}
};
Object.setPrototypeOf(obj,objPro);
console.log(Object.getPrototypeOf(obj)===objPro);  //true
//obj可以调用原来的原型中的属性和方法
console.log(obj.valueOf());
//使用setPrototypeOf,不会中断原先的Object