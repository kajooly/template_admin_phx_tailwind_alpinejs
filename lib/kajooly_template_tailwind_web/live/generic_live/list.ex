defmodule KajoolyTemplateTailwindWeb.GenericLive.List do
  #import Phoenix.LiveView.Helpers
  use Phoenix.Component

  #alias Phoenix.LiveView.JS
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  @doc """

  List

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.List

  ## Examples

      <.list>
          Breadcrum title
      </.list>

  """
  def list(assigns) do
              ###<.name_user text={item[:title]} />
    ~H"""
    <div class="w-full ">

    <%= if assigns[:list]!= nil do %>
      <%= if length(assigns[:list]) > 0 do %>
      <ul class="w-full text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg dark:bg-gray-900 dark:border-gray-800 dark:text-white">
        <%= for item <- assigns[:list] do %>
          <li class="w-full px-4 py-2 border-b border-gray-200 rounded-t-lg dark:border-gray-600 flex">
            <div class="flex-0 mr-3 pt-1">

              <div class="rounded-full h-8 w-8 bg-gray-500">--</div>
            </div>
            <div class="flex-1">
              <h4><%= item[:title] %></h4>
              <p class="text-[12px] text-gray-500"><%= item[:subtitle_a] %></p>
            </div>
            <div class="flex-0">
              <p><%= item[:subtitle_b] %></p>
            </div>
            <%= if item[:to_edit]!= nil do %>
              <div class="flex-0">
              <%= live_patch to: item[:to_edit], class: "text-xs px-4 font-medium text-blue-700 focus:outline-none bg-white  hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-blue-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700", ":class": "isCompactMode ? 'py-2':'py-6" do %> <.icons_pencil_square /> <% end %>
              </div>
            <% end  %>

          </li>
          <% end  %>
        </ul>
      <% else  %>
        <div class="w-full text-center">
          <h3 class="w-full text-center text-xl mb-3">
          <%= assigns[:empty_list_title] || "Empty list" %>
          </h3>
        </div>
      <% end %>
        <% else  %>
          <div class="w-full text-center">
            <h3 class="w-full text-center text-xl mb-3">
            <%= assigns[:empty_list_title] || "Empty list" %>
            </h3>
          </div>
    <% end %>
    </div>

    """
  end


end
