defmodule KajoolyTemplateTailwindWeb.GenericLive.Tabs do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  import KajoolyTemplateTailwindWeb.GenericLive.Text

  @doc """

  Timeline

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Timeline

  ## Examples


  """
    def tabs(assigns) do
     ~H"""
        <div x-data={"{ tab: window.location.hash ? window.location.hash.substring(1) : '#{ assigns[:open] }', isCompactMode: $persist(false).as('isCompactMode') }"} id={"tab_wrapper_#{gen_id_key()}"} class="mb-4 w-full">
          <%= if @nav != nil do %>
            <%= for item <- @nav do %>
              <nav class={"#{assigns[:class] || "flex flex-wrap -mb-px text-sm font-medium text-center border-b border-gray-200 dark:border-gray-600"}"} >
                  <%= render_slot(item) %>
              </nav>
            <% end %>
          <% end %>
          <%= if @content != nil do %>
            <%= for item <- @content do %>
              <%= render_slot(item) %>
            <% end %>
          <% end %>
        </div>
      """
    end

    def tab(assigns) do
      ~H"""
        <a :class={"  tab == '#{assigns[:id]}' ? 'border-sky-500' : 'border-gray-500' "} @click.prevent={"tab = '#{assigns[:id]}'; window.location.hash = '#{assigns[:id]}'"} href="#" class={" #{assigns[:class] || "mr-2 inline-block p-4 rounded-t-lg border-b-2" } "}><%= assigns[:title] || render_slot(@inner_block)%></a>
       """
    end

    def body(assigns) do
       ~H"""
        <div x-show={"tab === '#{assigns[:id]}'"} class={assigns[:class] || "p-2"} >
          <%= assigns[:title] || render_slot(@inner_block)%>
        </div>
        """
    end

end
