class Account

    attr_reader :number,
                :open_year,
                :bank,
                :customer,
                :balance

    @@all = []

    def initialize(number,balance,bank,customer,open_year=2020)
        @number = number
        @balance = balance
        @bank = bank
        @customer = customer
        @open_year = open_year
        @@all << self
    end

    def self.all
        @@all
    end

    
    
end