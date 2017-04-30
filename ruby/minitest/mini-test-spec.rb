require 'minitest/spec'
require 'minitest/autorun'

class People
  def initialize *arg
    @sleep_voice = arg[0] || "zzZ"
  end

  def sleep
    @sleep_voice
  end
end
# 以rspec的方式写minitest
describe "TestMyLife" do
  before do
    @me = People.new("zzz")
  end

  it "test_sleep" do
    # assert_equal exp, act, msg
    assert_equal "zzZ", @me.sleep, "I don't sleep well"
  end

  after do
    "Yeah test is ok"
  end
end
