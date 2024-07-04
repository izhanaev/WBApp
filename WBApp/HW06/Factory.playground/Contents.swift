import Foundation

class Person {
    let fullName: String
    let age: Int
    var passport: Passport?
    
    init(fullName: String, age: Int) {
        self.fullName = fullName
        self.age = age
        print("Человек \(fullName), \(age) лет создан")
    }
    
    deinit {
        print("Человек \(fullName) деинициализирован")
    }
}

final class Passport {
    let series: String
    let number: String
    let dateOfIssue: Date
    weak var person: Person?
    
    init(series: String, number: String, dateOfIssue: Date, person: Person) {
        self.series = series
        self.number = number
        self.dateOfIssue = dateOfIssue
        self.person = person
        print("Паспорт серии \(series) номер \(number) создан для \(person.fullName)")
    }
    
    deinit {
        print("Паспорт серии \(series) номер \(number) деинициализирован")
    }
}

final class Worker: Person {
    weak var factory: BrickFactory?
    
    override init(fullName: String, age: Int) {
        super.init(fullName: fullName, age: age)
        print("Работник \(fullName) создан")
    }
    
    deinit {
        print("Работник \(fullName) деинициализирован")
    }
}

final class Brick {
    let id: Int
    static var idCounter = 0
    
    init() {
        Brick.idCounter += 1
        self.id = Brick.idCounter
        print("Кирпич с ID \(id) создан")
    }
    
    deinit {
        print("Кирпич с ID \(id) деинициализирован")
    }
}

final class BrickFactory {
    let name: String
    var workers: [Worker] = []
    var bricks: [Brick] = []
    
    init(name: String) {
        self.name = name
        print("Фабрика \(name) создана")
    }
    
    deinit {
        print("Фабрика \(name) деинициализирована")
    }
    
    func addWorker(worker: Worker) {
        workers.append(worker)
        worker.factory = self
        print("Работник \(worker.fullName) добавлен на фабрику \(name)")
    }
    
    func produceBricks(quantity: Int) {
        for _ in 0..<quantity {
            let brick = Brick()
            bricks.append(brick)
        }
        print("Произведено \(quantity) кирпичей на фабрике \(name)")
    }
}

private func createAndDeinitializeObjects() {
    let person = Person(fullName: "Иван Иванов", age: 30)
    let passport = Passport(series: "1234", number: "123456", dateOfIssue: Date(), person: person)
    
    person.passport = passport
    
    let worker = Worker(fullName: "Алексей Петров", age: 25)
    let factory = BrickFactory(name: "BrickWorks")
    
    factory.addWorker(worker: worker)
    factory.produceBricks(quantity: 5)
}

createAndDeinitializeObjects()

