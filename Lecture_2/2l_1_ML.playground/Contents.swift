import UIKit

func evenNumber(_a:Int) -> Bool{
    return 0==_a%2 ? true : false
}

func dvsnTree(_a:Int) -> Bool{
    return 0==_a%3 ? true : false
}

var someArray = [Int](1...100)

var filteredArray = someArray.filter({$0 % 2 != 0 && $0 % 3 != 0})

print (filteredArray)

