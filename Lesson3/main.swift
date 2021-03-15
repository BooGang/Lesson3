//
//  main.swift
//  Lesson3
//
//  Created by Air on 13.03.2021.
//

import Foundation
enum Engine: String {
    case start, over
}
enum Window: String {
    case open, close
}
enum Luggage: String {
    case fill = "загрузить"
    case upload = "выгрузить"
}
struct SportCar {
    var brand: String
    var year: Any
    var baggage: String
    var engine: Engine
    var window: Window
    var fullemptyBaggage: Luggage
    
    init(brand: String, ago: String, bagg: String, enin: Engine, wind: Window, feBaggage: Luggage){
        self.brand = brand
        self.year = ago
        self.baggage = bagg
        self.engine = enin
        self.window = wind
        self.fullemptyBaggage = feBaggage
        
    }
    
   
    
}

struct TrunkCar {
    let brand: String
    let year: String
    var baggage: Any
    var engine: Engine
    var window: Window
    var fullemptyBaggage: Luggage
    
    mutating func changeBaggage(to value: Double){
        print("Объём багажника станет \(value) литров")
        baggage = value
    }

}

var car1 = SportCar(brand: "BMW", ago: "2002 год", bagg: "347 литров", enin: .start, wind: .close, feBaggage: .fill)
var car2 = TrunkCar(brand: "Audi", year: "2012 год", baggage: "500 литров", engine: .over, window: .close, fullemptyBaggage: .upload)
var car3 = SportCar(brand: "Honda", ago: "2000 год", bagg: "400 литров", enin: .over, wind: .open, feBaggage: .upload)

    
car2.changeBaggage(to: 250)


func print(car: SportCar) {
    print("----------------------------")
    print("Марка: \(car.brand)")
    print("Год: \(car.year)")
    print("Вместимость: \(car.baggage)")
    
    switch car.engine {
    case.start:
        print("Двигатель запущен")
    default:
        print("Двигатель выключен")
    }
    print("Окна \(car.window == .open ? "открыты" : "закрыты")")
    print("Багажник нужно \(car.fullemptyBaggage.rawValue)")

    
}
func print(car: TrunkCar) {
    print("----------------------------")
    print("Марка: \(car.brand)")
    print("Год: \(car.year)")
    print("Вместимость: \(car.baggage)")
    
    switch car.engine {
    case.start:
        print("Двигатель запущен")
    default:
        print("Двигатель выключен")
    }
    print("Окна \(car.window == .open ? "открыты" : "закрыты")")
    print("Багажник нужно \(car.fullemptyBaggage.rawValue)")
    
   

}

print(car: car1)
print(car: car2)
print(car: car3)
//Изменения 123
