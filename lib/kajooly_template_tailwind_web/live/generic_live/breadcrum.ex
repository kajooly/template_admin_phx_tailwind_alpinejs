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
    <nav class="flex" aria-label="Breadcrumb">
      <ol class="inline-flex items-center space-x-1 md:space-x-3">
        <%= if @page != nil do %>
          <%= for item <- @page do %>
            <%= if item[:to] != nil do %>
              <li>
                <div class="flex items-center">
                  <%=  if item[:icon] == "home" do %>
                    <.icons_home class="mr-2 w-4 h-4"/>
                  <% end %>
                  <%=  if item[:icon] == "chevron" do %>
                    <.icons_chevron_right class="w-6 h-6 text-gray-400"/>
                  <% end %>
                  <%= live_patch to: item[:to], class: "ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white" do %>
                    <%= item[:title] || render_slot(item) %>
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
                  <span class="ml-1 text-sm font-medium text-gray-500 md:ml-2 dark:text-gray-400"> <%= item[:title] || render_slot(item) %></span>
                </div>
              </li>
            <% end %>
          <% end %>
        <% end %>
      </ol>
    </nav>
    """
  end

end
