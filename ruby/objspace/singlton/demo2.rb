class Singleton
  class << self
    def instance
       @instance ||= new
    end
   private :new
  end
end


s1 = Singleton.instance
s2 = Singleton.instance

puts s1.equal? s2
