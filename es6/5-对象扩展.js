let name = 'zhangsan';
let age = 12;
let gender = '男';
let obj = {
	//对象中的属性值和属性名一样时,可以简写
		name,
		age,
		gender,
		//对象方法的简写
		// sayName:function(){}
		/*sayName:(){
			console.log('hello');
		}*/
		sayName:()=>{
			console.log('hello');
		}

};
console.log(obj);
/*let obj = {
	name:name,
	age:age,
	gender:gender
}*/
let obj2 = {
	name,
	age,
	gender,
	//对象内方法的简写,在外部不能这样写
	sayHi(){
		console.log('hi');
	}
}
obj2.sayHi();
//属性名可以用表达式
//给对象中添加10个属性,以name为前缀,以index为后缀
let obj3 = {};
for(let i=0;i<11;i++){
	obj3['name'+i] = i;
}
console.log(obj3);

let obj4 = {
	['name'+name]:'hello';
};
console.log(obj4);//{namezhangsan:'hello'}
//用上面的name变量的值作为属性名
let obj5 = {
	[name]:'hello';
};
console.log(obj5);//{zhangsan:'hello'}
//函数/方法的名字
console.log(obj2.sayHi.name); //sayHi
function test(){}
console.log(typeof test.name);//string