require_relative 'prob4'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new(100)
      account.deposit(30)
      expect(account.balance).to eq(130)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new(200)
      account.withdraw(20)
      expect(account.balance).to eq(180)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new(70)
      account.withdraw(200)
      expect(account.balance).to eq(70)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(120)
      expect(account.balance).to eq(120)
    end
  end
end
