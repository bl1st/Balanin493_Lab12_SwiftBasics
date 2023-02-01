import UIKit

print("First lab on Swift Balanin 493")

//Balanin 493

/*
 Balanin
 493
 */
/*
var intVar : Int = 5
var floatVar : Float = 10.0
var doubleVar : Double = 7.5
var strVar : String = "Balanin 493"

var res : Double = Double(Float(intVar) + floatVar)

print ("5 + 10 equals \(res)")

var res2 : Double = res / doubleVar

print("15 / 7.5 equals \(res2)")
print("string variable content: \(strVar)")
*/

/*
print("Quadratic equasiong")

var a : Float = 1.0
var b : Float = 2.0
var c : Float = 1.0
print("\(a)*x^2+\(b)*x+\(c)")

var d : Float = b*b - 4*a*c
if (d > 0)
{
    print("2 roots")
    let x1 : Float = (-b + sqrt(d)) / 2 * a
    let x2 : Float = (-b - sqrt(d)) / 2 * a
    print("1 root: \(x1)")
    print("2 root: \(x2)")
}
else if (d < 0)
{
    print("no roots, d < 0")
}
else
{
    print("1 root")
    let x1 : Float = -b / 2 * a
    print("root: \(x1)")
}


var x0  : Float = 0.0
var y0 : Float = 0.0
var x1 : Float = 5.0
var y1 : Float = 8.0

var px : Float = 2.0
var py : Float = 2.0

print("Rectange coords")
print("(\(x0);\(y0))|(\(x1);\(y1))")
print ("Point coords")
print("\(px);\(py)")

if (x0 < px && x1 > px && y0 < py && y1 > py)
{
    print("Point is in the rectangle")
}
else
{
    if (px < x0)
    {
        print("Point is on the left side from the rectangle")
    }
    else if (x1 < px)
    {
        print("Point is on the right side from the rectangle")
    }
    
    if(y0 > py)
    {
        print("Point is under rectangle")
    }
    else if(y1 < py)
    {
        print("Point is above rectangle")
    }
}

*/
/*
var intArr : [Int] = [3,2,4]
for i in intArr//multiply every element on 3
{
    print(i*3)
}

print("String array start content")
var strArr : [String] = ["string1", "string2"]
strArr.append("string3")
for s in strArr
{
    print(s)
}
strArr.remove(at: strArr.count-1)
print("removed last element. Result:")
for s in strArr
{
    print(s)
}
print("Int array size 5")
var intArr2 : [Int] = []
var sum : Int = 0
for i in 0...5
{
    intArr2.append(Int(arc4random_uniform(20)))
    print(intArr2[i])
    sum += intArr2[i]
}
print("Sredn.arifmetic: \(Double(sum)/Double(intArr2.count))")
print("min - \(String(describing: intArr2.min()))")
print("max - \(String(describing: intArr2.max()))")

print("BubbleSort Result")
for i in 0..<intArr2.count
{
    for j in 0..<intArr2.count-i-1
    {
        if (intArr2[j] > intArr2[j+1])
        {
            let temp : Int = intArr2[j+1]
            intArr2[j+1] = intArr2[j]
            intArr2[j] = temp
        }
    }
}
for i in intArr2
{
    print(i)
}

*/

/*
func isInCircle(cX: Int, cY : Int, r : Int, pX : Int, pY : Int) -> Bool
{
    return pow((Decimal(pX - cX)),2) + pow((Decimal(pY - cY)),2) <  Decimal(r*r)
}
let cX : Int = 0
let cY : Int = 0
let r : Int = 10
let pX : Int = 5
let pY : Int = 5
print ("Cirlce - (\(cX);\(cY)), radius: \(r)")
print("Point - (\(pX);\(pY))")
if (isInCircle(cX: cX, cY: cY, r: r, pX: pX, pY: pY))
{
    print ("Point is in circle")
}
else
{
    print("Point is not in circle")
}

//Array creating fucs
func createRandomArray(inRange: ClosedRange<Int>, count : Int) -> [Int]{
    var arr : [Int] = []
    for _ in 0..<count
    {
        arr.append(getRandomValue(min: inRange.lowerBound, max: inRange.upperBound))
    }
    return arr
}
func getRandomValue(min: Int, max : Int) -> Int{
    return min + Int(arc4random_uniform(UInt32(max - min + 1)))
}

var myArr : [Int] = createRandomArray(inRange: 0...20, count: 5)
var myArr2 : [Int] = createRandomArray(inRange: 0...20, count: 5)
//These arrays must be the same size!
for i in 0..<myArr.count
{
    print("Arr1: \(myArr[i])")
    print("Arr2: \(myArr2[i])")
}

func nme(array: [Int]) -> Float
{
    var avg : Float = 0.0
    for i in array
    {
        avg += Float(i)
    }
    avg /= Float(array.count)
    
    var dispersy : Float = 0.0
    for i in array
    {
        dispersy += pow((Float(i)-avg),2)
    }
    dispersy /= Float(array.count)
    return sqrt(dispersy)
}
print ("nme array 1 - \(nme(array: myArr))")
print ("nme array 2 - \(nme(array: myArr2))")

*/

class Circle2
{
    public var x: Float
    public var y: Float
    private var r: Float
    
    public init(x: Float, y: Float, r:Float){
        self.x = x
        self.y = y
        self.r = r
    }
    
    public func setPosition(x: Float, y: Float){
        self.x = x
        self.y = y
    }
    public func setRadius(r: Float){
        if (r < 0){
            return
        }
        self.r = r
    }
    public func getRadius() -> Float{
        return self.r
    }
    public func getCircleLength() -> Float{
        return 2.0 * Float.pi * self.r
    }
    public func getCircleArea() -> Float{
        return Float.pi * self.r * self.r
    }
    public func sdf(point : Point2) -> Float{
        let distance : Float = sqrt((pow((self.x - point.x),2)) + pow((self.y - point.y),2)) - r
        return distance
    }
}

class Point2
{
    public var x: Float
    public var y: Float
    
    public init(x: Float, y: Float)
    {
        self.x = x
        self.y = y
  
    }
}

var circle : Circle2 = Circle2(x: 0.0, y: 0.0, r: 3.0)
print ("Cricle (\(circle.x);\(circle.y)) | Radius: \(circle.getRadius())")
print("Circle length - \(circle.getCircleLength())")
print("Cirle area - \(circle.getCircleArea())")

var point : Point2 = Point2(x: -4.0, y: 0.0)
print("Point -  (\(point.x);\(point.y))")
print("distance from point to circle - \(circle.sdf(point: point))")










