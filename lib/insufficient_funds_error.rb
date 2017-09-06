class
  InsufficientFundsError < StandardError

  InsufficientFundsError.new "Cannot withdraw due to lack of funds"

end
