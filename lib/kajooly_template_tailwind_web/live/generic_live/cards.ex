defmodule KajoolyTemplateTailwindWeb.GenericLive.Cards do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  @doc """

  Cards

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Cards

  ## Examples

    <.button_group
      buttons={[
          %{
            title: "Borrador",
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }
        ]}
    />
    ---
    <.button_group>
      <buttons {%{
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }} >
        Título del botón
      </.buttons>
    </.button_group>

  """
  def simple_card_a(assigns) do
    IO.inspect assigns.link   , label: "assings"
    ~H"""
      <div class={ assigns[:class] || "p-4 mb-3 w-full bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700 #{assigns[:add_class]}" }>
        <div class="flex">
          <h5 class="flex-1 mb-2 text-xs font-bold tracking-tight text-gray-900 dark:text-white pt-2">
            <%= render_slot(@title) %>
          </h5>
            <%= render_slot(@icon) %>
        </div>
        <p class="text-[12px]">
        <%= render_slot(@body) %>
        </p>
        <%= if @link != nil do %>
            <%= for item <- @link do %>


        <%= live_patch to: item[:to], class: "text-xs font-medium text-blue-700 focus:outline-none bg-white  hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-blue-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700", ":class": "isCompactMode ? 'py-2':'py-6" do render_slot(item) end %>

        <% end %>
        <% end %>
      </div>

    """
  end

end
