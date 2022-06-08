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
    <div class={"inline-flex rounded-md shadow-sm #{assigns[:class]}"} role="group">
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

end
