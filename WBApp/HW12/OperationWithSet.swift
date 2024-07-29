//
//  OperationWithSet.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 25.07.2024.
//

import Foundation

struct IntSet {
    private var set: Set<Int> = []

    mutating func add(_ element: Int) {
        set.insert(element)
        print("Добавлен элемент: \(element)")
    }

    mutating func remove(_ element: Int) -> Int? {
        if let removedElement = set.remove(element) {
            print("Удалён элемент: \(removedElement)")
            return removedElement
        } else {
            print("Элемент \(element) не найден для удаления")
            return nil
        }
    }

    func contains(_ element: Int) -> Bool {
        let exists = set.contains(element)
        print("Элемент \(element) существует в множестве: \(exists)")
        return exists
    }

    func union(with otherSet: IntSet) -> IntSet {
        let unionSet = set.union(otherSet.set)
        print("Объединение множеств: \(unionSet)")
        return IntSet(set: unionSet)
    }

    func intersection(with otherSet: IntSet) -> IntSet {
        let intersectionSet = set.intersection(otherSet.set)
        print("Пересечение множеств: \(intersectionSet)")
        return IntSet(set: intersectionSet)
    }

    func difference(with otherSet: IntSet) -> IntSet {
        let differenceSet = set.subtracting(otherSet.set)
        print("Разность множеств: \(differenceSet)")
        return IntSet(set: differenceSet)
    }

    func display() {
        print("Текущее множество: \(set)")
    }
}

