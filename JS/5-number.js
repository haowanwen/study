//number类型
var a = 1;
var b = 2.234;
console.log(a,b);
console.log(typeof a);  //number
//八进制
var eight = 011;
console.log(eight); //9
//十六进制
var h = 0x12;
console.log(h); //18
//科学计数法
console.log(5e2);  //5*10的2次方   500
console.log(5e-2); //5*10的-2次方  0.05
//NaN，Not A Number，不是一个数值，但是属于number类型
var c = NaN;
console.log('-------');
console.log(c);  //NaN
console.log(typeof c); //number
var d = 10/'hello';
console.log(d); //NaN
//两个NaN是否相等
console.log(d == NaN); //false
console.log(NaN == NaN); //false
//判断一个值是否是NaN， 不能使用双等去判断，使用isNaN()函数判断，如果是NaN就返回true，否则返回false。
console.log(isNaN(d));    //true
//isNaN(实际参数，实参，参数)
console.log(isNaN(120));  //false
//Infinity 无限大的数
console.log(10/0);  //Infinity
console.log(Number.MIN_VALUE);//5e-324
console.log(Number.MAX_VALUE);//1.7976931348623157e+308

console.log(3e333);  //Infinity
console.log(typeof Infinity); //number

console.log(-3e333);  //-Infinity
console.log(typeof -Infinity);  //number

console.log(2e-333);  //0


















