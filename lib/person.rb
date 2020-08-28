require 'pry'
class Person 
    
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
   
    def initialize(name, bank_account = 25)
        @name = name    
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
        
    end
    
    # def bank_account # getter
    #     @bank_account
    # end
    
    # def bank_account=(new_bank) # set a new value for bank account
    #     @bank_account = new_bank
    # end

    # romina = Person.new("Romina")
    # romina.bank_account = 20
    # romina.bank_account 
    # // 20

   def happiness
   
#     # argunments and set the instance variable
#     # setter 
    @happiness = @happiness.clamp(0, 10)

#     # @happiness = .clamp(@@min_happiness, @@max_happiness)
   end

   def hygiene
   
    @hygiene = @hygiene.clamp(0, 10)

   end

   def happy?
    self.happiness > 7 ? true : false
#     if self.happiness > 7
#     return true
#     else 
#         false
#    end
end

def clean?
    self.hygiene > 7 ? true : false 
    # if self.hygiene > 7
    #     return true
    #     else 
    #         false
    #    end    
end
def get_paid(salary)
    self.bank_account += salary
    # @bank_account = @bank_account + salary 
    return 'all about the benjamins'
end

def take_bath
    self.hygiene += 4
#    @hygiene = @hygiene + @cleaner  
#     self.hygiene=(hygiene)

   return "♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
    
    self.hygiene -= 3
    self.happiness += 2
return "♪ another one bites the dust ♫"
end

def call_friend(friend) 
    # @happiness = @happiness + @happier
    # self.happiness=(happiness) 
    self.happiness += 3
    friend.happiness += 3

    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
    if  topic == "politics"
        self.happiness -= 2
        friend.happiness -= 2
        return "blah blah partisan blah lobbyist"
    elsif
          topic == "weather"
          self.happiness += 1
        friend.happiness += 1
        return 'blah blah sun blah rain'
        
    else 
        
         return 'blah blah blah blah blah'
    end
end



end

