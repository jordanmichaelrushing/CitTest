require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  test "single word based unit is returning the correct value & new unit" do
    assert_equal Unit.units['minute'], '60'
    assert_equal Unit.symbols['minute'], 's'
  end

  test "single symbol based unit is returning the correct value & new unit" do
    assert_equal Unit.units['°'], '0.017453292519943295'
    assert_equal Unit.symbols['°'], 'rad'
  end
end
