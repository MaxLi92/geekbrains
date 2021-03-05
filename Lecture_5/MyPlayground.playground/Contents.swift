import UIKit
import Foundation

/*
 authors: M.Li
 number: +77013610104
 */

enum EngineState: CustomStringConvertible {
    case run, stop
    
    var description: String{
        switch self {
        case .run:
            return "Двигатель запущен"
        case .stop:
            return "Двигатель заглушен"
        }
    }

}

enum WindowState: CustomStringConvertible{
    case open, close
    
    var description: String{
        switch self {
        case .open:
            return "Окна открыты"
        case .close:
            return "Окна закрыты"
        }
    }
}

enum carHatchState: CustomStringConvertible{
    case open, close
    
    var description: String{
        switch self {
        case .open:
            return "Люк открыт"
        case .close:
            return "Люк закрыт"
        }
    }
}

enum lowGearState{
    case low, higt
}

enum Action{
    case switchEngine(EngineState)
    case switchWindow(WindowState)
    case switchHatch(carHatchState)
}

protocol Car {
    var mark: String { get }
    var year: Int { get }
    var engineState: EngineState { get set }
    var windowState: WindowState { get set }
}

extension Car{
    func perform(action: Action) {
    }
}

class SportCar : Car {
    var hatchState: carHatchState = .open
    
    var mark: String
    var year: Int
    var engineState: EngineState = .run
    var windowState: WindowState = .open
    
    init(mark: String, year: Int){
        self.mark = mark
        self.year = year
    }
    func perform(action: Action) {
    }
}

var car1 = SportCar(mark: "toyta", year: 2000)

print(car1.hatchState)
