require 'active_support/callbacks'

class Record
  include ActiveSupport::Callbacks

  define_callbacks :save

  def save
  	run_callbacks :save do
  		puts "save"
  	end
  end

  set_callback :save, :before, :saving_message

  def saving_message
  	puts "saving..."
  	return false
  end

  set_callback :save, :after do
     puts "saved"
  end
end

person = Record.new
person.save