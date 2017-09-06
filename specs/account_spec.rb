require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/account'
require_relative '../lib/insufficient_funds_error'

describe "Account#withdraw" do
  it "Raises an Insufficient Funds Error if withdrawing too much" do
    start_balance = 100.0
    withdrawal_amount = 1000.0
    account = Bank::Account.new(1337, start_balance)
    proc { account.withdraw(withdrawal_amount) }.must_raise InsufficientFundsError
  end
end
