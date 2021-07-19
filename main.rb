#                    Rubitcoin                   #
class TempData
  attr_accessor :data
#  TempData class, used in all my Ruby projects  #
  def initialize
    @data = []
  end

  def finish
    @data.clear
    @data = []
  end
end

module Settings
  BTC_ADDR  = "1KCoAR9JAFQYRWVrsnHHmkpREJ3gNGUsSH" # Bitcoin address to pay #
  MANUAL_TX = true # do not set to false for now
                   # true = Make user add transaction hash manually
                   # false = Try to use blockchain.com API for 
  
  def isBase58?(addr = BTC_ADDR)
    if addr.startsWith("1") || addr.startsWith("3")
      return true
    end
    return false
  end
end

