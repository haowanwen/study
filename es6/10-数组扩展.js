//Array.from()将类数组或者有iterat接口的转换成数组
//Array.of()将一组值转成数组
let temp = {'0':'hello','1':'world',length:2}
console.log(Array.from(temp));
console.log(Array.of(10,11));

console.log(new Array(10));
console.log(new Array(10,11));

let arr = [24,45,24,45,6,2];
let set = new Set(arr);
console.log(set);//{24,45,6,2} 去重
console.log(Array.from(set));//[ 24, 45, 6, 2 ] 转数组
console.log([...set]);//[ 24, 45, 6, 2 ]

//数组去重
console.log([...new Set(arr)]);//[ 24, 45, 6, 2 ]

//find findIndex 迭代方法
//返回元素或者undefined
let result = arr.find((item)=>{
	return item>40;
});
console.log(result);
//返回索引或者-1
let result2 = arr.findIndex((item)=>{
	return item>40;
});
console.log(result2);