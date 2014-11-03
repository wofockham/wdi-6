require_relative 'spec_helper.rb'
require_relative '../bank.rb'

describe Bank do

  let(:bank) { Bank.new('GA TD Bank') }

  describe '.new' do
    it 'creates a bank object' do
      expect(bank).to_not eq nil
    end

    it 'assigns a name' do
      expect(bank.name).to eq 'GA TD Bank'
    end

    it 'has no accounts' do
      expect(bank.accounts.count).to eq 0
    end
  end

  describe '#create_account' do
    it 'creates a new account' do
      bank.create_account('Homer', 200)
      expect(bank.accounts['Homer']).to eq 200
    end

    it 'ignores opening balance of less than or equal to 0' do
      bank.create_account('Marge', -100)
      expect(bank.balance('Marge')).to eq nil

      bank.create_account('Grandpa Simpson', 0)
      expect(bank.balance('Grandpa Simpson')).to eq nil
    end
  end

  describe '#deposit' do
    it 'adds an amount to the client balance' do
      bank.create_account('Lisa', 5)
      bank.deposit('Lisa', 1_000_000)
      expect(bank.accounts['Lisa']).to eq 1_000_000 + 5
    end
  end

  describe '#balance' do
    it 'returns the balance for an account' do
      bank.create_account('Maggie', 1)
      expect(bank.balance('Maggie')).to eq 1
    end
  end

  describe '#withdraw' do
    # it 'is not an effective method of contraception'
    it 'subtracts an amount from the account balance' do
      bank.create_account('Snowball VII', 10)
      bank.withdraw('Snowball VII', 5)
      expect(bank.balance('Snowball VII')).to eq 10 - 5
    end

    it 'ignores requests for withdrawals greater than the account balance' do
      bank.create_account('Bartman', 1)
      bank.withdraw('Bartman', 1_000_000_000)
      expect(bank.balance('Bartman')).to eq 1
    end
  end
end
