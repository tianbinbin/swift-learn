//: Playground - noun: a place where people can play

//  1.swift中如何导入框架
/**
 *   oc 导入框架 ：#import <UIKit/UIKit.h>
 *
 */

import UIKit

// 2. 定义标志符
/*
 oc 定义变量
 int a = 20
 swift 定义标志符
 1> 定义标志符时 必须明确的指定改标志符是一个变量还是一个常量
 2> 使用var 定义变量
 3> 使用let 定义常量
 4> 定义格式：let／var 标示符名称：标识符类型 = 赋值
 */

// 2.1  定义变量
var a:Int = 20
a = 10

// 2.2  定义常量
let b : Double = 3.14

// 3. 在swift 中如果一行只有一条语句 那么语句结束时; 可以省略

// 4 打印内容
/*
 oc 打印内容
 NSLog(@"hello world")
 
 swift
 print("")
 */
print("hello world")
print(a)


// 5.1  在开发中优先使用常量,只有发现标识符需要修改时在需要变量
/*
 目的：防止在其他不希望修改的地方 不小心将值修改掉
 
 常量的本质： 指向的内存的地址不可以修改 但是可以通过内存地址找到对应的对象之后 修改对象内部的属性
 
 oc 中创建对象：
 UIView * view = [[UIView alloc]init]
 
 swift 创建对象
 类型()
 
 */

var view : UIView = UIView()
view = UIView()

let view1 : UIView = UIView()   // 在内存中指向一个对象 0x100  内存地址不可以修改
view1.alpha = 0.5               // 但是可以通过内存地址找到对应的对象之后修改内部的属性
view1.backgroundColor = UIColor.red
view1.backgroundColor = UIColor.blue

/*
 创建view 给他加一个button
 */
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let view2:UIView = UIView(frame: rect)
view2.backgroundColor = UIColor.green

// 3. 创建uibtton 对象
/* swift 枚举
 方式1: 如果可以根据用上下文语法推断出该枚举的类型可以直接 .具体类型
 方式2: 根据上下文推断不出来
 */
let btn :UIButton = UIButton(frame: CGRect(x: 10, y: 10, width: 60, height: 20))
btn.backgroundColor = UIColor.red
btn.setTitle("hello", for: .normal)
btn.setTitle("按钮", for: UIControlState.normal)
view2.addSubview(btn)

/*
 Int 相当于 NSInteger
 类型推倒
 1> 如果在定一个标志符时 又直接给改标志符进行复制 那么可以直接将标志符后的类型省略掉
 2> 编译器会根据我们后面赋值的类型 推到出前面标志符的类型 叫做类型推导
 3> 可以通过option +  鼠标总监查看标识符类型
 
 */

let c  = 20
var d = 2.43
let view3 = UIView()
let btn1 = UIButton()

/*
 swift 基本运算。相同类型之间才可以进行运算 因为swift 中没有隐士转换
 */

let m = 20
let n = 10.5
let result1 = Double(m)+n
let result2 = m + Int(n)


/*
 逻辑分枝
 swift 没有非 0  （nil） 即真 bool true false
 */

let a1 = 10


if a1 > 0 {
    
    print("a1大于0")
    
}

if a1 != 0 {
    
    print("a1不等于0")
}

// else if

let score = 88

if score > 90 {
    
    print("合格")
}else if score > 80 {
    
    print("和个了")
}else {
    
    print("你是猪吗")
}

/*
 guard  是swift 2.0 新增的语法
 与 if 语句 非常类似
 
 */

let age = 20

func onLine(age:Int){
    
    if age >= 18{
        
        print("可以留下上网")
        
    } else {
        print("go home")
    }
}

onLine(age: age)


func online(age:Int){
    
    guard age>18 else {
        
        print("回家去吧")
        return
    }
    
    guard age>20 else {
        
        print("回家拿身份证")
        return
    }
    
    print("留下上网吧")
}


online(age: age)


/*
 switch
 case 语句结束时可以不加break
 在swift case 可以判断多个条件
 如果case  结束时 产生case 穿透  在case 结束时加上fallthrough
 
 */

let sex = 0

switch sex {
case 0:
    print("男")
case 1 :
    print("女")
default:
    print("不男不女")
}

switch sex {
case 0,1:
    print("正常人")
    fallthrough
default:
    print("非正常人")
}


let m2 = 3.14

switch m2 {
case 3.14:
    print("和我们拍相当")
default:
    print("不想等")
}

let a3 = 20
let b3 = 30
let opration  = "+"
var reslut3 = 0

switch opration {
case "+":
    reslut3 = a3+b3
case "-":
    reslut3 = a3-b3
case "*":
    reslut3 = a3*b3
case "/":
    reslut3 = a3/b3
default:
    print("不合理操作符号")
    
}

/*
 1> 半开半闭。0 - 9 0..<10  不包含10
 2> 闭区间    0...9    包含 9
 */


let scroe1 = 120
switch scroe1 {
case 0..<60:
    print("不及格")
case 60..<80:
    print("一般")
case 80..<90:
    print("还行")
case 90...100:
    print("很好")
default:
    print("分数不争取")
}

/*
 for 循环
 只支持 区间遍历
 zai swift 开发中如果一个变量／常量 不用可以用 _ 代替
 */

for i in 0..<10 {
    
    print(i)
}

for i in 0...10{
    
    print(i)
}

// 打印十次 hello world

for _ in 0..<10 {
    
    print("hello world")
}

/*
 while do-wile
 */

var m4 = 0
while m4 < 10 {
    m4 += 1
    print(m4)
}

repeat{
    
    m4 -= 1
    print(m4)
    
    
}while m4>0



/*
 字符串 String
 String 为结构体
 */

let str = "hello swift"
var str1 = "hello fuck"

str1 = "hello china"
// str1.characters 拿到字符串中所有元素
let length = str1.characters.count

let str2 = "小马哥"
let str3 = "真帅"
let str4 = str2+str3

let name  = "tianbb"
let age2 = 10
let height = 1.84
let person = "my name is \(name),年龄 is \(age) shengao is \(height) "


let min = 3
let second = 4
let timeStr = String(format: "%02d:%02d", min,second)

let urlString = "www.baidu.com"
(urlString as NSString).substring(to: 3)
(urlString as NSString).substring(from: 4)
(urlString as NSString).substring(with:NSMakeRange(3,7))

let headindex = urlString.index(urlString.startIndex, offsetBy: 3)
let header2 = urlString.substring(to: headindex)

let startindex = urlString.index(urlString.startIndex, offsetBy: 4)
let endindex = urlString.index(urlString.startIndex, offsetBy: 9)
let range1 = Range(startindex..<endindex)
let header3 = urlString.substring(with: range1)
let midel2 = urlString.index(urlString.endIndex, offsetBy: -3)
urlString.substring(from: midel2)


/*
 数组
 */

let array = ["1","hello","fuck","word"]
var arrayM  = Array<String>()
var arrayN  = [String]()

arrayM.append("abc")
arrayM.append("nihao")
arrayM.append("fuck")
arrayM.append("no")
arrayM.append("o")

arrayM.remove(at: 0)
arrayM
arrayM[0]="yuanma"
arrayM

let itemStr = arrayM[1]

for i in 0..<arrayM.count{
    
    print(arrayM[i])
    
}


for item in arrayM{
    
    print(item)
}


for (index,item) in arrayM.enumerated(){
    
    print(index)
    print(item)
    
}

/*
 如果两个数组中存放的时相同的元素 在swift 中可以对这两个数组相加  直接合并
 */
let arr1 = ["ni","hai"]
let arr2 = ["hao","ma"]
let arr3 = [3,4]
let arr4 = arr1 + arr2


/*
 字典
 */

// 编译器中根据[]
let dict:Dictionary<String,Any> = ["key":"nihaoma","why":1]
let dict1 :[String:Any] = ["nihaoma":"buhsihenhao","nine":"woyeshi"]
var dict2:[String:Any] = ["man":"man","girl":"friend"]
var dict3  = Dictionary<String,Any>()
var dict4  = [String:Any]()


dict4["name"] = "baby"
dict4["age"] = 16
dict4["height"] = 1.88
dict4

dict4.removeValue(forKey: "height")
dict4

dict4["age"] = 10
dict4

dict4["age"]

for key in dict4.keys{
    
    print(key)
}

for value in dict4.values{
    
    print(value)
}

for (key,value) in dict4{
    
    print(key)
    print(value)
}

var dikct5 :[String:Any] = ["age":16,"name":"tom"]
let dikct6 :[String:Any] = ["age1":17,"name1":"tom2"]

for (key,value) in dikct6 {
    
    dikct5[key] = value
}

dikct5

/*
 元组。swift 特有的 oc 没有
 */

let infoArrary:[Any] = ["tianbb",18,184]

let nametb = infoArrary[0] as! String
let number = nametb.characters.count


let incfoDict :[String:Any] = ["name":"tian","age":10,"height":20]
let dictName = incfoDict["name"] as! String
let number1 = dictName.characters.count


let infoTuple = ("tian",23,1.88)
let tupleName = infoTuple.0
let tupleAge = infoTuple.1
tupleName.characters.count

let infoTuple1 = (name:"tian",age:23,height:1.88)

infoTuple1.name
infoTuple1.age
infoTuple1.height

let (namet,aget,heightt) = ("whiy",18,1.89)
namet
aget
heightt

/*
 可选类型
 nil 是一个特殊的类型
 在开发中只有可选类型 才能赋值为nil 其他类型不能赋值为nil
 可选类型是一个范型集合
 */

var strName : Optional<String> = nil
var strName1 : String? = nil

strName1 = Optional("12")
strName1 = "21"

// 强制戒包很危险 如果可选类型为nil强制解包的话程序会崩溃
//print(strName1)

if strName1 != nil {
    
    print(strName1!)
    
}


// 可选绑定。该语法用于可选类型 是我们使用起来 可选类型更加方便

if let tempName = strName1 {
    
    print(tempName)
}


if let strName1 = strName1 {
    
    print(strName1)
}

let m22 = 2.44
let n22 = Int(m22)

let str22 = "a"
let num22:Int? = Int(str22)


let path :String?  = Bundle.main.path(forResource: "123.plist", ofType: nil)

// 将字符串 转换成url
let url = URL(string: "http:www.baidu.com")

// 返回值 为空或者 有值 的话 必须用可选类型取接受
let dict6 :[String:Any] = ["name":"tianbinbin","age":16]
let values = dict6["name"]

// 只要一个类型可能为空 那么这个标示符的类型一定是一个可选类型

/*
 l类型转换  as
 */

let strAs = "www.baidu.com"
(strAs as NSString).substring(to: 3)

let dict7 :[String:Any] = ["name":"tianbinbin","age":18,"height":1.99]
let name7 = dict7["name"]

// 通过as? 转成具体类型 as? 转成的了行是一个可选类型 系统会自动判断name7 能否助暂缓何曾string 如果转换成功 那么久获取子复还 转化不成功返回nil
let name8 = name7 as? String  // 从 any 可选类型 转换成string 的可选类型

// 可选绑定
if let name8 = name8 {
    
    print(name8)
}


if let name8 = dict7["name"] as? String {
    
    print(name8)
}


let tempname1 = dict7["name"]

// as!  将我们的类型转换成具体=类型 如果转换不成功 会崩溃
let name9 = tempname1 as! String

/*
 函数
 
 */


func about() {
    
    print("iphoe8")
}


func callphone(phoneNume:String){
    
    print("打电话\(phoneNume)")
    
}


about()
callphone(phoneNume: "15711163094")


func readMessage()->String{
    
    return " 吃饭了吗"
}


let message = readMessage()

print(message)

func sum(num1:Int,num2:Int)->Int{
    
    return num1+num2
}

let result3 = sum(num1: 10, num2: 30)
print(result3)


/*
 枚举 类型
 */

enum MethodType:String {
    
    case get = "get"
    case post = "post"
    case put  = "put"
    case delete = "delete"
}


// 创建具体的值
let type:MethodType = .put
let type1  = MethodType.post
let type2  = MethodType(rawValue: "get")  //  值／nil
type2?.rawValue




let btnss = UIButton()
btnss.setTitle("123", for: .normal)
btnss.setTitle("s3", for: UIControlState.normal)

// 给枚举类型进行赋值
enum direation:Int {
    
    case east = 0
    case weast = 1
    case north = 2
    case sourth = 3
}

let direct: direation = .east

let direct1 = direation(rawValue: 1)
let sre = direct1?.rawValue


enum tyope :Int{
    case get = 0,post,put,delete
}

/*
 结构体 是一个值类型 在方法中传递时 时 值传递
 */

struct location {
    
    // 属性
    var x :Double
    var y :Double
    
    
    // 方法
    func test() {
        print("结构体方法")
    }
    
    // 改变成员属性  如果在函数中修改了成员属性 那么该函数前面必须加上mutating
    mutating func moveH(_ distance:Double) {
        self.x += distance
    }
    
    // 给结构体扩充构造函数
    // 默认情况下 系统会为我们的结构体提供一个默认的构造函数 并且该构造函数 要求给我门的每一个成员属性赋值 构造函数都是以init 开头的 并且构造函数不需要返回值 在构造函数结束时 必须保证 我们的所有成员属性 被初始化
    
    init(x:Double,y:Double) {
        
        self.x = x
        self.y = y
    }
    
    
    init(xys:String) {
        
        let arr  =  xys.components(separatedBy: ",")
        
        let item1 = arr[0]
        let item2 = arr[1]
        
        //        if let x = Double(item1) {
        //
        //             self.x  = x
        //
        //        }else{
        //
        //            self.x = 0
        //        }
        //
        //        if let y = Double(item2) {
        //
        //            self.y  = y
        //
        //        }
        // 先判断前的可选类型是否有值 有值解包 如果没有使用后面的值
        self.x =   Double(item1) ?? 0
        self.y =   Double(item2) ?? 0
        
        
        
    }
    
    
}

// 结构体对应的值
var  center  = location(x: 20, y: 30)


let rectted = CGRect(x: 1, y: 20, width: 20, height: 20)

let poin1 = CGPoint(x: 0, y: 0)

let rang2 = NSMakeRange(0, 20)
let rang3 = NSRange(location: 12, length: 2)


// 给结构体扩充方法
center.test()
center.moveH(12)
print(center)


// 给结构体扩充构造函
location(x: 20, y: 3)




/*
 类的使用
 */

class PersonMan {
    
    // 如果属性是值类型 则初始化为空值
    // 如果属性是对象类型则初始化为nil值
    var name:String = ""
    var age:Int = 0
    var view:UIView?
    
    
    init() {
        // 必须对所有的属性初始化
        
        
    }
    
}

let personMAN = PersonMan()
personMAN.name = "tianbinbin"
personMAN.age = 100

let viewse = UIView()
personMAN.view = viewse

/*
 定义类的属性
 
 */
class StudentTB{
    
    // 类的属性 用于存储实例的常量&变量
    var name:String =  ""
    var age:Int = 0
    var mathScore:Double = 0.0
    var chinesScore:Double = 0.0
    
    // 计算属性  又可以称之为只读属性
    var averageScre:Double{
        
        return (mathScore+chinesScore)*0.5
        
    }
    
    //    func getAverage() -> Double {
    //
    //        return (mathScore+chinesScore)*0.5
    //    }
    
    // 类属性
    static var courcount : Int = 0
    
    
}

let stu = StudentTB()
stu.name = "tbb"
stu.age = 18
stu.mathScore = 90
stu.chinesScore = 20
stu.averageScre
StudentTB.courcount = 2

class PersonTB {
    
    // 监听属性
    var name: String  = "" {
        
        // 监听属性即将发生改变
        willSet {
            print(newValue)
            print(name)
            
        }
        
        // 监听属性已经发生改变：已经改变
        didSet {
            print(oldValue)
            print(name)
        }
    }
    
}

let  tbperson = PersonTB()
tbperson.name = "tianbib"


/*
 类的构造函数
 */

class TBBperSon{
    
    var name : String = ""
    var age : Int = 0
    var hegiht : Int = 0
    
    // 在swift 开发中如果在对象开发中用到了成员属性 self. 可以省略
    // 如果在函数中 有何成员属性虫鸣的局部变量 那么self.  不能省略
    
    
    // 如果有自定义构造函数 会酱系统的构造函数覆盖掉
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    init() {
        
    }
    
    
    //    init(dict:Dictionary<String,Any>)
    init(dict:[String:Any]){
        
        //        if let name = dict["name"] as? String{
        //
        //            self.name = name
        //        }
        //
        //
        //        if let age = dict["age"] as? Int{
        //
        //            self.age = age
        //        }
        //
        // kvc  赋值  必须继承nsobject
        
        
        
        
        
        
        
    }
    
}

let tbbp = TBBperSon(name: "tianbin", age: 25)
let tbbp1 = TBBperSon()
let tbbp2 = TBBperSon(dict:["name":"tb","age":18])
print(tbbp2.name)



class TBBperSonTWO:NSObject{
    
    var name : String = ""
    var age : Int = 0
    var hegiht : Int = 0
    
    // 在swift 开发中如果在对象开发中用到了成员属性 self. 可以省略
    // 如果在函数中 有何成员属性虫鸣的局部变量 那么self.  不能省略
    
    // 如果有自定义构造函数 会酱系统的构造函数覆盖掉
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    init(dict:[String:Any]){
        
        super.init()
        setValuesForKeys(dict)
    }
    
    // 如果传递的字典中找不到相对应的值 一定要重写改方法 不然会崩溃
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}

let tbtwo = TBBperSonTWO(dict: ["name":"tbtwo","age":10,"hegiht":20,"fuck":210])

print(tbtwo.name,tbtwo.age,tbtwo.hegiht)


/*
 析构函数 主要做内存的释放类似于oc 的 delloc
 
 */

class TYBBPerson {
    
    
    var name : String = ""
    var age : Int  = 0
    
    
    // 重写析构函数
    deinit {
        print("创建的对象被销毁")
    }
}

// 只有可选类型才能值为空
var TRBB :TYBBPerson? = TYBBPerson()
TRBB = nil


/*
 循环引用
 */

class TBBBBPerson {
    
    var name :String = ""
    var book : Book?
    
    
    
    deinit {
        print("人这个对象销毁掉了")
    }
    
}

class Book {
    
    var price:Double = 0.0
    weak var person:TBBBBPerson?
    
    deinit {
        print("book 销毁掉了")
    }
    
}

var person22:TBBBBPerson? = TBBBBPerson()
person22?.name = "tnb"

var book:Book? = Book()
book!.price = 60.0


person22!.book = book
book!.person = person22

person22 = nil
book = nil


/*
 可选连
 */

class tbsubPERSON{
    
    var name:String = ""
    var dog:dogGO?
    
}


class dogGO {
    
    var weight : CGFloat = 0.0
    var tou:toy?
}


class toy {
    
    var price:Double = 0.0
}


let tpp = tbsubPERSON()
tpp.name = "binbin"

let doggou = dogGO()
doggou.weight = 80.0

let touy = toy()
touy.price = 100


tpp.dog = doggou
doggou.tou = touy

tpp.dog?.tou?.price


/*
 协议
 */

protocol SprotProtocol {
    
    // 默认情况下 协议中的方法必须要实现
    func palayBaskball()
    func palayfootball()
    
}

class Teachrer:SprotProtocol{
    
    func palayBaskball() {
        
        print("打篮球")
    }
    
    
    func palayfootball() {
        print("踢足球")
    }
}

// 如果有继承的话 加个逗号 跟上协议
class StudentPople : NSObject,SprotProtocol{
    
    func palayBaskball() {
        
        print("打篮球")
    }
    
    
    func palayfootball() {
        print("踢足球")
    }
    
}



protocol BuyTictickesDelegate : class{
    
    func buyTictkes()
}

class MMMPERSON {
    
    // 睇你代理属性
    
    weak var delegate:BuyTictickesDelegate?
    
    func gottoBeijing() {
        
        delegate?.buyTictkes()
    }
}

// optional 是属于oc 的特性 如果协议中有可选的方法 那么必须在protocaol 加上@objc
@objc protocol TextProtocol {
    
    @objc optional func tex()
}


class doug:TextProtocol{
    
    func tex() {
        
    }
    
}

/*
 协议的定义  protocol + 协议的名称
 如何遵守协议
 协议在代理设计模式中如何使用
 协议中 方法的可选性
 
 
 */


/*
 闭包  类似于 oc 中的block
 
 */


