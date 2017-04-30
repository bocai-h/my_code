require 'minitest/autorun'

class TestMock < MiniTest::Test
  def setup
    @badman = MiniTest::Mock.new
    # mock是为了模拟消耗巨大或者需要远程访问的部分的返回值
    @badman.expect(:destroy_my_computer, true)
    @goodman = MiniTest::Mock.new
    @goodman.expect(:destroy_my_computer, false)
  end

  def test_mock
    assert_equal true, @badman.destroy_my_computer
    assert_equal false, @goodman.destroy_my_computer
  end
end
