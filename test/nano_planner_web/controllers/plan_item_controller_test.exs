defmodule NanoPlannerWeb.PlanItemControllerTest do
  use NanoPlannerWeb.ConnCase
  import NanoPlanner.ScheduleFixtures

  describe "GET /plan_items" do
    setup do
      plan_item_fixture([])
      plan_item_fixture([])
      :ok
    end

    test "予定項目の一覧を表示する", %{conn: conn} do
      conn = get(conn, "/plan_items")

      assert conn.status == 200

      plan_items = conn.assigns[:plan_items]
      assert is_list(plan_items)
      assert length(plan_items) == 2
    end
  end
end
