defmodule KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button

  @doc """

  ButtonGroup

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup

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
  def button_group(assigns) do
    ~H"""
    <div class={"inline-flex rounded-md shadow #{assigns[:class]}"} role="group">
      <%= if @buttons != nil do %>
        <%= for item <- @buttons do %>
          <.button {item} >
            <%= item[:title] || render_slot(item) %>
          </.button>
          <% end %>
        <% end %>
    </div>
    """
  end
  def button_circle_group(assigns) do
      ~H"""
        <span x-data="{ isCompactMode: $persist(false).as('isCompactMode') }" >
          <div
            class={"flex -space-x-4 ml-6 #{assigns[:class]}"}
            :class="isCompactMode ? '-space-x-2':'-space-x-3'"
            role="group">
            <%= if @buttons != nil do %>
              <%= for item <- @buttons do %>
                <.circle_button {item} >
                  <%= item[:title] || render_slot(item) %>
                </.circle_button>
                <% end %>
              <% end %>
          </div>
        </span>
      """
    end

end
