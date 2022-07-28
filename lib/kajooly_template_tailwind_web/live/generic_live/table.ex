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
    <div class={"relative shadow-md sm:rounded-lg z-0 #{assigns[:class]}"} x-data="{ isCompactModeButton: $persist(false).as('isCompactMode') }">
      <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400 rounded-lg">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400 rounded-t-lg ">
          <tr class="rounded-t-lg  bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <%= for head <- @head do %>
              <th scope="col"  colspan={head[:colspan]||"1"} class={" #{head[:class]||"px-4 py-3 align-middle"}"}>
                <%= assigns[:label] || render_slot(head) %>
              </th>
            <% end %>
          </tr>
        </thead>
        <tbody>
          <%= for row <- @rows do %>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-700"
                :class="isCompactModeButton ? ' md:leading-3':' md:leading-5'" >
              <%= for col <- @col do %>
                <%= if col[:th]!=nil do %>
                  <th scope="row"
                      style={col[:style] || "__no_style: false;"}
                      class={"px-4  md:py-0 font-medium text-gray-900 dark:text-white whitespace-nowrap #{col[:class]}"}
                      :class="isCompactModeButton ? ' py-2':' py-3'"
                    >
                    <%= render_slot(col, row) %>
                  </th>
                <% else %>
                <td
                  style={col[:style] || "__no_style: false;"}
                  class={"px-4 md:py-0  dark:text-gray-100 text-gray-900 #{col[:class]}"}
                  :class="isCompactModeButton ? ' py-2':' py-3'">
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
