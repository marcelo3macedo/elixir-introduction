defmodule SumListTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list sum" do
      list = [1,2,3]
      response = SumList.call(list)
      expect_response = 6

      assert response == expect_response
    end

    test "handle empty list" do
      list = []
      response = SumList.call(list)
      expect_response = 0

      assert response == expect_response
    end

    test "returns the list sum when has 0 values" do
      list = [1,2,3,0,0,5,0,10]
      response = SumList.call(list)
      expect_response = 21

      assert response == expect_response
    end
  end
end
