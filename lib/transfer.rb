class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    self.receiver.valid? && self.sender.valid?
  end

  def execute_transaction()
    if self.valid? && self.status == "pending" && self.sender.balance > self.amount
      self.receiver.deposit(amount)
      self.sender.deposit(-amount)
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.status == "complete"
      #put money back in sender
      #take away money from receiver
      self.sender.balance += self.amount
      self.receiver.balance -= self.amount
      self.status = "reversed"
    end
  end

end


# BankAccount

# Transfer
#   #reverse_transfer
#     can reverse a transfer between two accounts (FAILED - 15)
#     it can only reverse executed transfers (FAILED - 16)