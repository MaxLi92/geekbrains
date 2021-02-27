import UIKit

/*
 authors: M.Li
 number: +77013610104
 */

enum EngineState{
    case run, stop
}

enum WindowState{
    case open, close
}


struct SportCar {
    let mark: String
    let year: Int
    var volBoot: Double
    var engineState: EngineState
    var windowState: WindowState
    var boot: Double

}

struct TruckCar {
    let mark: String
    let year: Int
    var volBoot: Double
    var engineState: EngineState
    var windowState: WindowState
    var boot: Double
}

var car1 = SportCar(mark: "toyota", year: 2005, volBoot: 40, engineState: .run, windowState: .close, boot: 10)
var car2 = SportCar(mark: "audi", year: 2020, volBoot: 20, engineState: .stop, windowState: .close, boot: 20)

var truck1 = TruckCar(mark: "MAZ", year: 2010, volBoot: 200, engineState: .run, windowState: .open, boot: 100)
var truck2 = TruckCar(mark: "KAMAZ", year: 2015, volBoot: 140, engineState: .run, windowState: .open, boot: 140)

car1.engineState = .stop



print(car1)
