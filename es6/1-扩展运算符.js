//将字符串转成数组
let arr = [...'hello']; //['h','e','l','l','o']
console.log(arr);
//扩展运算符后边如果跟的是变量,那么这个变量将来是一个数组,存放的是多余的数据;
//扩展运算符后边如果跟的是数组,可以将数组展开,在参数那里使用,列表形式返回
//扩展运算符后边如果跟的是字符串,外部包裹[],最终是一个数组

let arr2 = [...[1,2,3,4]];//[1,2,3,4]
console.log(arr2);