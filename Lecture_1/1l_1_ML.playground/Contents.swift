import UIKit
/*
 authors: M.Li
 number: +77013610104
 */

func dis(a: Float, b: Float , c: Float) -> Float{
    return pow(b,2)-4*a*c
}

var a: Float = 1
var b: Float = -2
var c: Float = -3
var x: Float

if (a == 0){
    if (b == 0) {print("это даже не уравнение")}
    else
    {
        x = -c/b
        print("это не квадратное уравнение \(x)")
    }
}else{
    if (b == 0){
        if((-c/a) >= 0){
            x = pow(-c/a, 0.5)
            print("Первый корень \(x)")
            x = -pow(-c/a, 0.5)
            print("Второй корень \(x)")
        }else{print("Корней нет")}
    }else{
        if(c == 0){
            print("первый корень 0")
            x = -b/a
            print("Второй корень \(x)")
    }else{
        if (dis(a: a, b: b, c: c) < 0){print("Корней нет")}
        if (dis(a: a, b: b, c: c) == 0){
            x = (-b+pow(dis(a: a, b: b, c: c), 0.5))/(2*a)
            print("Один корень \(x)")
        }
        if (dis(a: a, b: b, c: c) > 0){
            x = (-b+pow(dis(a: a, b: b, c: c), 0.5))/(2*a)
            print("Первый корень \(x)")
            x = (-b-pow(dis(a: a, b: b, c: c), 0.5))/(2*a)
            print("Второй корень \(x)")
        }
    }
    }
}
