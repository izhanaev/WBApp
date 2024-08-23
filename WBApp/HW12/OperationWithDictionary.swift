//
//  OperationWithDictionary.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 25.07.2024.
//

import Foundation

struct CityPopulationDictionary {
    private var cities: [String: Int] = [:]

    mutating func addCity(_ city: String, population: Int) {
        cities[city] = population
        print("Добавлен город: \(city) с населением: \(population)")
    }

    mutating func removeCity(_ city: String) {
        if let removedPopulation = cities.removeValue(forKey: city) {
            print("Удалён город: \(city) с населением: \(removedPopulation)")
        } else {
            print("Город \(city) не найден для удаления")
        }
    }

    mutating func updatePopulation(for city: String, newPopulation: Int) {
        if let oldPopulation = cities.updateValue(newPopulation, forKey: city) {
            print("Обновлено население города \(city): с \(oldPopulation) на \(newPopulation)")
        } else {
            print("Город \(city) не найден для обновления")
        }
    }

    func getPopulation(for city: String) -> Int? {
        if let population = cities[city] {
            print("Население города \(city): \(population)")
            return population
        } else {
            print("Город \(city) не найден")
            return nil
        }
    }

    func display() {
        print("Текущий список городов и население: \(cities)")
    }
}
