defmodule KajoolyTemplateTailwindWeb.GenericLive.Breadcrum do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  @doc """

  Breadcrum

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Breadcrum

  ## Example


    <.breadcrum pages={[
        %{
          title: "Home",
          to: "#home",
          icon: "home"
        },
        %{
          title: "Lista de ejemplo",
          to: "#list",
          icon: "chevron"
        },
        %{
          title: "Lista general",
          to: nil,
          icon: "chevron"
        },
    ]} />

  """
  def breadcrum(assigns) do
    assigns = assign_new(assigns, :page, fn -> assigns[:pages] || [] end)
    ~H"""
    <span
    x-data="{  isCompactMode: $persist(false).as('isCompactMode')  }"
    >
      <nav class="md:flex pl-2 md:pl-0" aria-label="Breadcrumb"
      :class=" isCompactMode ? 'mb-2' : 'mb-6'"
      >
        <%=  if assigns[:title] != nil do %>
          <h1 class="text-2xl">
            <%= assigns[:title]  %>
            <br :class="isCompactMode ? 'hidden' : ''" /><span class="text-gray-500" :class="!isCompactMode ? 'hidden' : ''"> | </span>
            <small><%= assigns[:subtitle]  %></small>
          </h1>
        <% end %>
        <.breadcrum_list pages={@page} />
      </nav>
    </span>
    """
  end

  def breadcrum_list(assigns) do
      ~H"""
      <ol class="inline-flex items-center space-x-1 md:space-x-1 ml-auto mb-auto font-medium"
      >
        <%= if assigns[:pages] != nil do %>
          <%= for item <- assigns[:pages] do %>
            <%= if item[:to] != nil do %>
              <li>
                <div class="flex items-center">
                <%= live_patch to: item[:to], class: " flex text-gray-700 hover:text-gray-900  dark:text-gray-400 dark:hover:text-white" do %>
                  <%=  if item[:icon] == "home" do %>
                    <.icons_home class="flex-0 w-4 h-4"/>
                  <% end %>
                  <%=  if item[:icon] == "chevron" do %>
                    <.icons_chevron_right class="flex-0 w-6 h-6 text-gray-400"/>
                  <% end %>
                    <span class="flex-1 mt-1"
                    :class=" isCompactMode ? 'text-xs':'text-xs' "
                    ><%= item[:title] || render_slot(item) %></span>
                  <% end %>
                </div>
              </li>
            <% else %>
              <li aria-current="page">
                <div class="flex items-center">
                  <%=  if item[:icon] == "home" do %>
                    <.icons_home class="mr-2 w-4 h-4"/>
                  <% end %>
                  <%=  if item[:icon] == "chevron" do %>
                    <.icons_chevron_right class="w-6 h-6 text-gray-400"/>
                  <% end %>
                  <span
                    class="ml-1  text-gray-400 dark:text-gray-500 md:ml-2 dark:text-gray-400"
                    :class=" isCompactMode ? 'text-xs':'text-sm ' "
                    > <%= item[:title] || render_slot(item) %></span>
                </div>
              </li>
            <% end %>
          <% end %>
        <% end %>
      </ol>
      """
  end

end
