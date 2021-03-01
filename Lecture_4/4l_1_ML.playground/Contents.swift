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

enum carHatchState{
    case open, close
}

enum lowGearState{
    case low, higt
}

class Car {
    let mark: String
    let year: Int
    var volBoot: Double
    var engineState: EngineState
    var windowState: WindowState
    init(mark: String, year: Int, volBoot: Double, engineState: EngineState, windowState: WindowState) {
        self.mark = mark
        self.year = year
        self.volBoot = volBoot
        self.engineState = engineState
        self.windowState = windowState
    }
    
    func openWindow() {
        windowState = .open
    }
}

class SportCar : Car {
    var hatchState: carHatchState
    
    init(mark: String, year: Int, volBoot: Double, engineState: EngineState, windowState: WindowState, hatchState: carHatchState) {
        self.hatchState = hatchState
        super.init(mark: mark, year: year, volBoot: volBoot, engineState: engineState, windowState: windowState)
    }
    
    func openHatch() {
        hatchState = .open
    }

    func closeHatch() {
        hatchState = .close
    }
    
    override func openWindow(){
        super.openWindow()
        print ("открыто окно")
    }
}

class TrunkCar : Car {
    var lowGear: lowGearState
    
    init(mark: String, year: Int, volBoot: Double, engineState: EngineState, windowState: WindowState, lowGear: lowGearState) {
        self.lowGear = lowGear
        super.init(mark: mark, year: year, volBoot: volBoot, engineState: engineState, windowState: windowState)
    }
    
    func switchGearLow()  {
        lowGear = .low
        print("Включена пониженная")
    }
    
    func switchGearHigt() {
        lowGear = .higt
        print("Пониженная отключена")
    }
    
    override func openWindow() {
        print("окно не открывается Т.Т")
    }
}

var car1 = SportCar(mark: "toyta", year: 2020, volBoot: 40, engineState: .stop, windowState: .close, hatchState: .open)
var car2 = TrunkCar(mark: "MAZ", year: 1982, volBoot: 1000, engineState: .stop, windowState: .close, lowGear: .higt)

car1.closeHatch()
car1.openWindow()
car2.openWindow()
car2.switchGearLow()
car2.engineState = .run
print(car2.engineState)
