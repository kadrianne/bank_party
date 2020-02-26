class Bank
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            account.bank == self
        end
    end

    def customers
        accounts.map do |account|
            account.customer
        end.uniq
    end

    def new_account(number,balance,customer)
        Account.new(number,balance,self,customer)
    end

    def oldest_account
        accounts.min_by do |account|
            account.open_year
        end
    end

    def self.most_customers
        all.max_by do |bank|
            bank.customers.size
        end
    end

end 
