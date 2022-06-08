defmodule KajoolyTemplateTailwindWeb.GenericLive.Table do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  @doc """

  Table

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Table

  ## Examples

      <.table>
          Breadcrum title
      </.table>

  """
  def table(assigns) do
    ~H"""
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg z-0">
      <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
          <tr>
            <%= for head <- @head do %>
              <th scope="col"  colspan={head[:colspan]||"1"} class={"px-4 py-1 #{head[:class]}"}>
                <%= assigns[:label] || render_slot(head) %>
              </th>
            <% end %>
          </tr>
        </thead>
        <tbody>
          <%= for row <- @rows do %>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
              <%= for col <- @col do %>
                <%= if col[:th]!=nil do %>
                  <th scope="row" class={"px-4 py-2 font-medium text-gray-900 dark:text-white whitespace-nowrap #{col[:class]}"}>
                    <%= render_slot(col, row) %>
                  </th>
                <% else %>
                <td class={"px-4 py-2 #{col[:class]}"}>
                    <%= render_slot(col, row) %>
                  </td>
                <% end %>
              <% end %>
            </tr>
          <% end %>
        </tbody>
      </table>
    </div>
    """
  end


end
