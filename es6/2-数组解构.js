//数组解构
/*let [a,b,c] = [1,2,3,4,5];
//a b c
//1 2 3
console.log(a,b,c);
*/
//保存数组剩余的值,使用扩展运算符 ...
let [a,b,c,...d] = [1,2,3,4,5,6,7];
//a b c d
//1 2 3 [4,5,6,7]
console.log(a,b,c,d);

//扩展运算符可以将数组展开
let result = Math.max(2,4,7,92);
console.log(result); //92
let result2 = Math.max(...[2,4,7,3]);
console.log(result2); //7
console.log(...[2,4,7,3]);

//不要单独使用扩展运算符展开数组,可以在参数那里使用,将参数数组转成参数列表.如果扩展运算符后边跟的是变量,name接受多余的数据,放置到数组中
/*var result3 = ...[2,4,7,3];
console.log(result3);*/
//rest参数--->不再推荐使用arguments
//累加
function test([a,...tail]){
	//获取所有的实参,然后累加
	//a 1
	//tail = [1,2,3,4,5];
}
test([1,2,3,4,5]);
//let [a,...tail] = [1,2,3,4,5];
//默认值解释
{
	let [a,b] = [];
	console.log(a,b);//undefinded undefinded
	let [c=1,d=2] = [];
	console.log(a,b);//1 2
	//当解构完成之后,变量严格等于undefined的时候,默认值生效
	let [e=1,f=2] = [3,4];
	console.log(e,f);//3 4 
	//
	function test(){
		console.log('test');
		return 2;
	}
	//默认值赋值的时机
	//一种情况:先进行默认值的赋值,再去解构值,如果有值,那么覆盖原先的赋值.
	//√ 一种情况:先去判断解构的值有没有,如果有进行赋值,如果没有那么进行默认值的赋值
/*	let [g=test] = [1];
	console.log('----------');
	console.log(g); //1*/
	let [g=test()] = [1];
	console.log(g); //1

}