import UIKit
import Foundation

/*
authors: M.Li
number: +77013610104
*/

enum engineState {
case run, stop
}

enum windowState {
case open, close
}

enum carHatchState{
case open, close
}

enum lowGearState{
case low, higt
}

protocol Car {
var mark: String { get }
var year: Int { get }
var engineState: engineState { get set }
var windowState: windowState { get set }
}

extension Car{

mutating func window(status: windowState) {
switch status {
case .open:
print("Окна открыты")
self.windowState = .open
case .close:
print("Окна закрыты")
windowState = .close
}
}

mutating func engine(status: engineState) {
switch status {
case .run:
print("Двигатель запущен")
self.engineState = .run
case .stop:
print("Двигатель заглушен")
engineState = .stop
}
}
}

class SportCar : Car {
var hatchState: carHatchState = .close

var mark: String
var year: Int
var engineState: engineState = .stop
var windowState: windowState = .close

init(mark: String, year: Int){
self.mark = mark
self.year = year
}

func hatch(status: carHatchState) {
switch status {
case .open:
print("Люк открыт")
self.hatchState = .open
case .close:
print("Люк закрыт")
hatchState = .close
}
}
}

extension SportCar: CustomStringConvertible{
var description: String{
return "Марка автомобиля: \(mark)\nГод выпуска: \(year)\nСостояние двигателя: \(engineState)\nСостояние окон: \(windowState)\nСостояния люка \(hatchState)"
}
}

class TrunkCar : Car {
var lowGearState: lowGearState = .higt

var mark: String
var year: Int
var engineState: engineState = .stop
var windowState: windowState = .close

init(mark: String, year: Int){
self.mark = mark
self.year = year
}

func gear(status: lowGearState) {
switch status {
case .low:
print("Включена пониженная")
self.lowGearState = .low
case .higt:
print("Пониженная отключена")
lowGearState = .higt
}
}

func window(status: windowState) {
switch status {
case .open:
print("Окна невозможно открыть")
self.windowState = .close
case .close:
print("Окна закрыты")
windowState = .close
}
}
}

extension TrunkCar: CustomStringConvertible{
var description: String{
return "Марка автомобиля: \(mark)\nГод выпуска: \(year)\nСостояние двигателя: \(engineState)\nСостояние окон: \(windowState)\nСостояния коробки \(lowGearState)"
}
}

var car1 = SportCar(mark: "toyta", year: 2000)
var trunk1 = TrunkCar(mark: "MAZ", year: 1980)

print("Действия над спорткаром:")
car1.engine(status: .run)
car1.engine(status: .stop)
car1.window(status: .open)
car1.hatch(status: .open)

print("\nДействия над грузовиком:")
trunk1.engine(status: .run)
trunk1.window(status: .open)
trunk1.gear(status: .low)
trunk1.gear(status: .higt)

print("\nОписание спорткара:\n\(car1)")
print("\nОписание грузовика:\n\(trunk1)")
