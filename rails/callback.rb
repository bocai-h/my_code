require 'active_support/callbacks'
class Audit
  def before(caller)
    puts "Audit:before is called"
  end

  def before_save(caller)
    puts "Audit: before_save is called"
  end

  def after_save(caller)
    puts "after save audit"
  end
end

class Account
  include ActiveSupport::Callbacks
  define_callbacks :save,:scope => [:kind,:name]
  set_callback :save,:after,Audit.new

  def save
    run_callbacks :save do
      puts "save in main"
    end
  end
end

account = Account.new  #after save audit
account.save

# p Audit.new.methods.grep(/before/)
