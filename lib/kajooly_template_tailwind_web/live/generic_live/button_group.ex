defmodule KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button

  @doc """

  ButtonGroup

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup

  ## Examples

      <.button_group>
          Breadcrum title
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
