class Customer
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            account.customer == self
        end
    end

    def banks
        accounts.map do |account|
            account.bank
        end.uniq
    end

    def new_account(number,balance,bank)
        Account.new(number,balance,bank,self)
    end

end