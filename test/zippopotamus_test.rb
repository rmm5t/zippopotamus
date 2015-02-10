require "test_helper"

class ZippopotamusTest < Minitest::Test
  def test_should_exist
    assert Object.const_defined?(:Zippopotamus)
  end
end
