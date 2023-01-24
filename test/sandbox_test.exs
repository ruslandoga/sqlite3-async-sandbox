for i <- 1..10 do
  defmodule Module.concat([SandboxTest, :"#{i}"]) do
    use Sandbox.DataCase, async: true

    test "greets the world" do
      assert {:ok, _} = Repo.query("create table example(a INTEGER)")
      assert {3, _} = Repo.insert_all("example", [%{a: 1}, %{a: 2}, %{a: 3}])
      assert Repo.aggregate("example", :count) == 3
      :timer.sleep(:timer.seconds(1))
      assert Repo.aggregate("example", :count) == 3
    end
  end
end
