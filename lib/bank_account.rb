class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        self.balance += amount
    end

    def display_balance
       "Your balance is $#{self.balance}."
    end

    def valid?
        self.status == "open" && self.balance > 0
    end

    def close_account
        self.status = "closed"
    end

end

# BankAccount

# Transfer
#   initialize
#     can initialize a Transfer (FAILED - 5)
#     initializes with a sender (FAILED - 6)
#     initializes with a receiver (FAILED - 7)
#     always initializes with a status of 'pending' (FAILED - 8)
#     initializes with a transfer amount (FAILED - 9)
#   #valid?
#     can check that both accounts are valid (FAILED - 10)
#     calls on the sender and receiver's #valid? methods (FAILED - 11)
#   #execute_transaction
#     can execute a successful transaction between two accounts (FAILED - 12)
#     each transfer can only happen once (FAILED - 13)
#     rejects a transfer if the sender does not have enough funds (does not have a valid account) (FAILED - 14)
#   #reverse_transfer
#     can reverse a transfer between two accounts (FAILED - 15)
#     it can only reverse executed transfers (FAILED - 16)