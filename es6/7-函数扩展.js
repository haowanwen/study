function test(a,b='2',c,d='1'){}
console.log(test.name);//test
//形参的个数
console.log(test.length); //1 给某一个形参设置默认值,那么它的个数将不包括有默认值的参数,并且只计算到有默认值之前,直接停止返回长度
