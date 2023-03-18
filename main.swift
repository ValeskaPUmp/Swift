prefix operator *;
infix operator +:AdditionPrecedence;
let point=Point(x:6.5,y:8);
let point1=Point(x:17,y:21);
print(*point);
print(*(point+point1));
class Point{
  private var _x:Double;
  private var _y:Double;
  private static var _counter:Int=0;
  private let _id:Int;
  public init(x:Double,y:Double){
    _x=x;
    _y=y;
    Point._counter+=1
    _id=Point._counter;
  }
  public static prefix func *(x:Point)->String{
    return "Point with id[\(x._id)]{x=\(x._x),y=\(x._y)}";
  }
  public static func +(first:Point,second:Point)->Point{
    let x=first._x+second._x;
    let y=first._y+second._y;
    return Point(x:x,y:y);
  }
}