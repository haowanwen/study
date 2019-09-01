//普通函数
/*function test(){
	console.log(this)
}
test(); //global  window*/

/*console.log(this);//直接在模块内打印this,指向模块的导出对象 module.exports,默认情况下为空{}
console.log(this === module.exports); //true*/



function test(){
	console.log(this)
}
//箭头函数
let test2 = ()=>{
	//箭头函数内部没有自己的this,this指向箭头函数声明时的父作用域中的this
	console.log(this);
}
test2();//{}

let obj = {
	test,
	test2
};
obj.test(); //obj
obj.test2(); //{}

//箭头函数内部的arguments不保存实参
/*let test3 = ()=>{
	console.log(arguments);
}
test3(1,2,3);*/
