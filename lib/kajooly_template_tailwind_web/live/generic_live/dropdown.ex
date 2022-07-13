defmodule KajoolyTemplateTailwindWeb.GenericLive.Dropdown do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button

  @doc """

  Dropdown

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Dropdown

  ## Examples

    <.Dropdown
      buttons={[
          %{
            title: "Borrador",
            to: "#"
          }
        ]}
    />
    ---
    <.Dropdown>
      <buttons {%{
            to: "#"
          }} >
        Título del botón
      </.buttons>
    </.Dropdown>

  """
  def dropdown(assigns) do
    ~H"""
    <div x-data="{ open: false, isCompactMode: $persist(false).as('isCompactMode') }"
        class={"relative w-full text-left #{assigns[:class]}"}>
      <button
        @click="open = !open"
        @keydown.escape.window="open = false"
        @click.away="open = false"
        class={"inline-flex items-center p-2 rounded-lg
        min-w-33
        #{assigns[:classbutton] ||
        "hover:bg-gray-100
        focus:bg-gray-100
        dark:hover:bg-gray-900
        dark:focus:bg-gray-900 "}
        "}
        :class="isCompactMode ? 'p-0 px-2' : 'p-2'"
        >
        <div class="flex w-full">
          <div class="flex-1 pt-1 min-w-[60%]">
            <span class="sr-only"><%= assigns[:title] || "Options"  %></span>
            <div class=" md:flex md:flex-col md:items-end md:leading-tight">
              <span class={"font-semibold min-w-50 #{assigns[:classbuttontitle]}"}>
                <%= assigns[:title] || render_slot(@inner_block)  %>
              </span>
            </div>
          </div>
          <div class="flex-0 mx-2 pt-0 mt-0">

            <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor"
                class=" h-6 w-6 text-gray-300 dark:text-gray-500 ml-auto ">
              <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
            </svg>
          </div>
        </div>

      </button>
      <div
        x-cloak
        x-show="open"
        x-transition:enter="transition ease-out duration-100"
        x-transition:enter-start="transform opacity-0 scale-95"
        x-transition:enter-end="transform opacity-100 scale-100"
        x-transition:leave="transition ease-in duration-75"
        x-transition:leave-start="transform opacity-100 scale-100"
        x-transition:leave-end="transform opacity-0 scale-95"
        class={"
        #{assigns[:classdrop] || "absolute right-0 top-15 flex flex-col w-60 mt-3 border rounded-lg  shadow-lg border-gray-100  dark:border-gray-700
        bg-white
        dark:border-gray-800
        dark:bg-gray-900
        z-50"}
        "}>
        <%= if @buttons != nil do %>
          <%= for item <- @buttons do %>
          <%= if item[:group_title] != nil do %>
              <h2 class=" flex items-center h-8 px-3  text-sm text-xs text-gray-400 hover:bg-gray-200 dark:hover:bg-gray-700 capitalize"
              :class="isCompactMode ? 'py-2':'py-6"  >
              <%= item[:group_title] %>
            </h2>
          <% end %>
            <%= live_patch to: item[:to], class: "flex items-center h-8 px-3  text-sm hover:bg-gray-200 dark:hover:bg-gray-700 capitalize", ":class": "isCompactMode ? 'py-2':'py-6" do %>
              <%= item[:title] || render_slot(item) %>
            <% end %>
          <% end %>
        <% end %>
      </div>
    </div>
    """
  end

end
