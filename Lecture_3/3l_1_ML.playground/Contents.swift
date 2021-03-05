import UIKit
import Foundation

/*
 authors: M.Li
 number: +77013610104
 */

enum EngineState: CustomStringConvertible{
    case run, stop
    
    var description: String{
        switch self {
        case .run:
            return "заведен"
        case .stop:
            return "заглушен"
        }
    }
}

enum WindowState: CustomStringConvertible{
    case open, close
    
    var description: String{
        switch self {
        case .open:
            return "открыты"
        case .close:
            return "закрыты"
        }
    }
}

enum volBoot: CustomStringConvertible {
    case empty, half, full
    
    var description: String{
        switch self {
        case .empty:
            return "багажник/кузов пуст"
        case .half:
            return "в багажнике/кузове что то есть "
        case .full:
            return "багажние/кузов полон"
        }
    }
}

enum putget{
    case put, get
}

enum Action{
    case switchEngin(EngineState)
    case switchWindow(WindowState)
    case putget(putget)
}


struct SportCar: CustomStringConvertible {
    let mark: String
    let year: Int
    var volBoot: volBoot
    var engineState: EngineState = .stop
    var windowState: WindowState = .close
    
    var description: String{
        return "Марка автомобиля \(mark), года выпуска \(year), двигатель \(engineState), окна \(windowState), \(volBoot)"
    }
    
    mutating func act(action: Action){
        switch action {
        case .switchEngin(let _status):
            engineState = _status
        case .switchWindow(let _status):
            windowState = _status
        case .putget(let _status):
            switch _status {
            case .put:
                switch volBoot {
                case .empty:
                    volBoot = .half
                case .half:
                    volBoot = .full
                case .full:
                    print("Багажник уже полон")
                }
            case .get:
                switch volBoot {
                case .empty:
                    print("Багажник уже пуст")
                case .half:
                    volBoot = .empty
                case .full:
                    volBoot = .half
                }
            }
        }
    }
}

struct TruckCar: CustomStringConvertible {
    let mark: String
    let year: Int
    var volBoot: volBoot
    var engineState: EngineState = .stop
    var windowState: WindowState = .close
    
    var description: String{
        return "Марка грузовика \(mark), года выпуска \(year), двигатель \(engineState), окна \(windowState), \(volBoot)"
    }
    
    mutating func act(action: Action){
        switch action {
        case .switchEngin(let _status):
            engineState = _status
        case .switchWindow(let _status):
            switch _status {
            case .open:
                print("Тут нельзя открыть окна")
            default:
                print("Окна уже закрыты")
            }
        case .putget(let _status):
            switch _status {
            case .put:
                switch volBoot {
                case .empty:
                    volBoot = .half
                case .half:
                    volBoot = .full
                case .full:
                    print("Кузов уже полон")
                }
            case .get:
                switch volBoot {
                case .empty:
                    print("Кузов уже пуст")
                case .half:
                    volBoot = .empty
                case .full:
                    volBoot = .half
                }
            }
        }
    }
}

var car1 = SportCar(mark: "toyota", year: 2005, volBoot: .empty)
var car2 = SportCar(mark: "audi", year: 2020, volBoot: .half)

var truck1 = TruckCar(mark: "MAZ", year: 1980, volBoot: .half)
var truck2 = TruckCar(mark: "KAMAZ", year: 2015, volBoot: .full)

print("Первый автомобиль")
car1.act(action: .switchEngin(.run))
car1.act(action: .putget(.get))

print("__________\nВторой автомобиль")
car2.act(action: .switchWindow(.open))

print("__________\nПервый грузовик")
truck1.act(action: .switchEngin(.run))
truck1.act(action: .switchWindow(.open))
truck1.act(action: .putget(.put))

print("__________\nВторой грузовик")
truck2.act(action: .putget(.put))
truck2.act(action: .putget(.get))

print("__________\nОписание ")
print(car1)
print(car2)
print(truck1)
print(truck2)
