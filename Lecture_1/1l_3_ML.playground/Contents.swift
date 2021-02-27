import UIKit
/*
 authors: M.Li
 number: +77013610104
 */

var dep:Float = 1000
var per:Float = 15
var year:Int = 5

for i in 1...year {
    dep = dep * (per/100 + 1)
    print("В \(i) год будет \(dep)")
}
