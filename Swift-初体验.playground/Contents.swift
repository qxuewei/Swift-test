//: Playground - noun: a place where people can play

import Foundation
import UIKit

//定义标示符表明是变量还是常量!
//let  常量
//var  变量
let age:Int = 24
var name = "qiuxuewei"
var PI:Double = 3.1415

print(name,age);

let view = UIView(frame: CGRect(x: 16, y: 64, width: 100, height: 100))
view.backgroundColor = UIColor.red

let btn = UIButton(type: UIButtonType.custom)
btn.frame = CGRect(x: 8, y: 8, width: 64, height: 64)
btn.setTitle("确定", for: UIControlState.normal)
btn.backgroundColor = UIColor.green
view.addSubview(btn)


let a = 20
let b = 13.14
let c = Double(a) + b
print(c)

//判断句必须有真假值
var d:Int = 2;
if d != 0 {
    
}else{
    
}

var score = 99
if score < 60 {
    print("不及格")
}else if score < 80{
    print("及格")
}else if score < 100{
    print("优秀")
}else{
    print("毕业")
}


let ifView :UIView? = UIView();

if ifView != nil{
    print("有")
}else{
    print("没有")
}

//三目运算符
a == score ? a : score

//guard
var Age = 18
func online(age:Int) -> Void{
    guard age >= 18 else {
        print("回家去")
        return
    }
    print("可以上网")
}
online(age: Age)


//switch 用法
//sex:0 -> 男  sex:1 -> 女
let sex = 0
//普通用法
switch sex{
case 0:
    print("男")
case 1:
    print("女")
default:
    print("未知")
}

//判断多个值
switch sex{
case 0,1:
    print("正常人")
    //如果case穿透需要加此关键字
//    fallthrough
default: break
//    print("不正常")
}

let sexStr = "人妖"
switch sexStr {
case "男":
    print("男")
case "女":
    print("女")
default:
    print("人妖")
}

//区间判断
score = 59
switch score{
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80...100:
    print("优秀")
default: break
}

//for 循环
for i in 0  ..< 5  {
    print(i)
}

for _ in 0 ..< 3{
    print("Hello world!")
}

//字符串
let str = "I am qiuxuewei"
let MyName = (str as NSString).substring(from: 5)

//数组
let arr1 : [String] = ["邱学伟","王珂惠","妈妈"]
let arr2 = ["邱学伟","王珂惠"]
let arr3 = ["邱学伟","烟台大学","不羁阁","疯火科技"]

var arrM1 = arr3;

//添加元素
arrM1.append("10000000")

//删除元素
//删除最后一个元素并且会把最后一个元素返回
arrM1.removeLast()
//移除指定下标元素
arrM1.remove(at: 0)
//移除指定元素

//遍历数组
//通过下标遍历
for i in 0..<arrM1.count{
//    print(arrM1[i])
}

//直接遍历元素值
for item in arrM1{
//    print(item)
}

//区间遍历
arrM1.append("老婆")
for item in arrM1[0..<2]{
//    print(item)
}

//数组合并
let arr01 = ["小码哥","黑马",7000] as [Any]
let arr02 = ["邱学伟","努力"] as [Any]
let arr03 = arr01 + arr02


//print(arrM1)


//字典
//不可变字典
let dict1 : Dictionary<String,AnyObject> = ["name":"邱学伟" as AnyObject,"age":24 as AnyObject]
let dict2 : [String : AnyObject] = ["name" : "邱学伟" as AnyObject, "height" : 1.83 as AnyObject]
let dict3 = ["name" : "邱学伟", "age" : 24] as [String : Any]

//可变字典
var dictM1 : Dictionary<String, AnyObject>
var dictM2 : [String : Any]
var dictM3 = ["name" : "邱学伟", "age" : 24] as [String : Any]

//操作字典
//增
dictM3["height"] = 1.83

//删
dictM3.removeValue(forKey: "age")

dictM3["老婆"] = "王珂惠"

//遍历字典
for key in dictM3.keys{
//    print(key)
}
for value in dictM3.values {
//    print(value)
}
for (key,value) in dictM3 {
    print(key , value)
}

//字典合并
var dictM4 = ["学历" : "本科","电话" : "110"] as [String : Any]
for (key,value) in dictM3 {
    dictM4[key] = value
}



//print(dictM4)


//定义元组
let tuple1 = ("ZAR","扩散","Wish",6);
let tuple2 = (crazyfire1 : "ZAR",crazyfire2 : "扩散",person : 6) //常用
let (crazyfire1,crazyfire2,person1,personNumber) = ("ZAR","扩散","Wish",6)

tuple2.crazyfire1

print(tuple2)



//可选类型
var optionalName : Optional<String>

class person{
    var optionalName : Optional<String>
}

optionalName = "xiaoming"

let xxxName = "xxx" + optionalName!

//定义方式二:
var phoneNum : String?
//phoneNum = "+86 110"

//swift中如果进行强制解包操作会崩溃,所以在解包的时候需要进行判断
if phoneNum != nil{
    var changePhoneNum = "new" + phoneNum!
}

//可选绑定,判断phoneNum是否有值,1如果没有值直接跳过,2如果有值拆包后将值赋值给tempPhoneNum
if let tempPhoneNum = phoneNum {
    print("解包后有值")
}

//可选类型应用场景
let URLString = "www.qiuxuewei.com"
let URL : NSURL? = NSURL(string: URLString)

//创建NSRequest对象
//需要先判断可选类型数据是否有值
if URL != nil{
    let request = NSURLRequest(url: URL! as URL)
}

if let tempURL = URL {
    let request = NSURLRequest(url: tempURL as URL)
}

//在Swift中新增URL数据类型,这是在OC中没有的数据类型.

//函数

//1.没有参数,没有返回值
func run() -> Void{
    print("跑跑跑...")
}
run()

//其中如果函数木有返回值, " -> Void "可以省略!
func run2() {
    print("省略后,跑跑跑...")
}
run2()


//2.有参数,没有返回值
func callPhone(PHONE : String) -> Void{
    print("打电话给 \(PHONE)")
}
callPhone(PHONE: "110")

func callPhone2(PHONE : String){
    print("打电话给 \(PHONE)")
}
callPhone2(PHONE: "119")

//3.没有参数,有返回值
func readMsg() -> String{
    return "今天早起学习了么?"
}
print(readMsg())

//4.有参数,有返回值
func add(number1 : Double, number2 : Double) -> Double{
    return number1 + number2
}
print(add(number1: 100, number2: 9.99))



//类
class Person : NSObject{
    
    //存储属性
    //1>如果类型是结构体或类,定义为可选类型
    //2>如果是基本数据类型,定义时直接初始化0 / 0.0
    var name : NSString?
    var age = 0
    var height = 0.00
    
    
    
}

class student : Person {
    
    //存储属性
    var chineseScore = 0.0
    var mathScore = 0.0
    
    //计算属性,由其他属性值计算而来
    var totalScore : Double{
        //可省略get
//        get{
            return chineseScore + mathScore
//        }
    }
    
    var avgScore : Double{
        return ( chineseScore + mathScore ) * 0.5
    }
    
    //类属性,设置或者获取属性值必须通过类名进行获取
    static var scoreCount : Int = 2;
}

let stu = student();
stu.name = "邱学伟"
stu.age = 18
stu.chineseScore = 119
stu.mathScore = 120
stu.totalScore
stu.avgScore
student.scoreCount


//swift监听类属性值的改变
class Driver : Person{
    var driverMileage : Double = 0.0

    //Swift3.0 中对属性监听器做了改变.有待补充
//    var experience : String?{
//        willChangeValue(forKey: "will"){
//            print(self.driverMileage)
//        }
//        didChangeValue(forKey: "will"){
//            print(self.driverMileage)
//        }
//    }
    
}

let didiDriver = Driver()
didiDriver.name = "老司机"
didiDriver.driverMileage = 100.0






