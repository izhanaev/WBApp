import Foundation

struct Account {
    let accountNumber: String
    var balance: Double
    
    mutating func deposit(amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(amount: Double) -> Bool {
        if amount <= balance {
            balance -= amount
            return true
        } else {
            print("Недостаточно средств на счете \(accountNumber)")
            return false
        }
    }
}

final class Bank {
    var accounts: [Account] = []
    
    func addAccount(account: Account) {
        accounts.append(account)
    }
    
    func transfer(from fromAccountNumber: String, to toAccountNumber: String, amount: Double) {
        guard let fromIndex = accounts.firstIndex(where: { $0.accountNumber == fromAccountNumber }),
              let toIndex = accounts.firstIndex(where: { $0.accountNumber == toAccountNumber }) else {
            print("Один из счетов не найден")
            return
        }
        
        if accounts[fromIndex].withdraw(amount: amount) {
            accounts[toIndex].deposit(amount: amount)
            print("Перевод \(amount) от \(fromAccountNumber) к \(toAccountNumber) выполнен успешно")
        }
    }
    
    func printAccounts() {
        for account in accounts {
            print("Счет \(account.accountNumber): баланс \(account.balance)")
        }
    }
}

private func massDeposit(accounts: inout [Account], amount: Double) {
    for i in 0..<accounts.count {
        accounts[i].deposit(amount: amount)
    }
}

private func massWithdraw(accounts: inout [Account], amount: Double) {
    for i in 0..<accounts.count {
        _ = accounts[i].withdraw(amount: amount)
    }
}

let bank = Bank()

var account1 = Account(accountNumber: "123", balance: 1000)
var account2 = Account(accountNumber: "456", balance: 2000)
var account3 = Account(accountNumber: "789", balance: 1500)

bank.addAccount(account: account1)
bank.addAccount(account: account2)
bank.addAccount(account: account3)

print("Состояние счетов до операций:")
bank.printAccounts()

bank.accounts[0].deposit(amount: 500)
bank.transfer(from: "123", to: "456", amount: 300)

massDeposit(accounts: &bank.accounts, amount: 100)

massWithdraw(accounts: &bank.accounts, amount: 50)

print("\nСостояние счетов после операций:")
bank.printAccounts()

