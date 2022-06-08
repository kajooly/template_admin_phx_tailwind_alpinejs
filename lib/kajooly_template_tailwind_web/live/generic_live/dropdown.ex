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
    <div x-data="{ open: false }" class="relative text-left">
      <button
        @click="open = !open"
        @keydown.escape.window="open = false"
        @click.away="open = false"
        class="inline-flex items-center p-2 rounded-lg
        hover:bg-gray-100
        focus:bg-gray-100
        dark:hover:bg-gray-900
        dark:focus:bg-gray-900
        min-w-33
        ">
        <span class="sr-only">Options</span>
        <div class="hidden md:flex md:flex-col md:items-end md:leading-tight">
          <span class="font-semibold min-w-50">
            <%= assigns[:title] %>
          </span>
        </div>
        <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor" class=" h-6 w-6 text-gray-300 --ml-9">
          <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
        </svg>
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
        class={"absolute right-0 top-15 flex flex-col w-60 mt-3 border rounded-lg  shadow-lg border-gray-100  dark:border-gray-700
        bg-white
        dark:border-gray-800
        dark:bg-gray-900
        z-50
        #{assigns[:classdrop]}
        "}>
        <%= if @buttons != nil do %>
          <%= for item <- @buttons do %>
            <%= live_patch to: item[:to], class: "flex items-center h-8 px-3 py-6 text-sm hover:bg-gray-200 dark:hover:bg-gray-700 capitalize" do %>
              <%= item[:title] || render_slot(item) %>
            <% end %>
          <% end %>
        <% end %>
      </div>
    </div>
    """
  end

end
