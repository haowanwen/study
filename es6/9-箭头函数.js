/*function test(){
	console.log(this);
	(()=>{
		console.log(this);//箭头函数的this用的是父作用域的this(上一行的this)
	})();
}
//test(); //global 2次


let obj = {
	name:'zhangsan',
	test
};
obj.test(); //obj 2次*/

function test(){
	console.log(this,'----'); //global
	return ()=>{
		console.log(this,'+++++')//say返回箭头函数,global
	}
}
let obj = {
	name:'zhangsan',
	say:test()
}
obj.say(); //global