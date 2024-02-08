defmodule KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup do
  #import Phoenix.LiveView.Helpers
  use Phoenix.Component

  #alias Phoenix.LiveView.JS
  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.Dropdown

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
    buttons = assigns[:buttons]
    ~H"""
    <div class="hidden md:inline w-full">
      <div class={" #{assigns[:class]||"inline-flex rounded-md shadow w-full"}"} role="group">
        <%= if buttons != nil do %>
          <%= for item <- buttons do %>
            <%= if item[:group_title] != nil do %>
              <h2 class=" border-b-2 text-[10px] bg-gray-50 dark:bg-gray-900 text-gray-400 border-gray-100  dark:border-gray-600 pt-3 pb-2 px-6">
              <%= item[:group_title] %>
              </h2>
            <% end %>
            <.button {item} class_span={item[:classbutton_span]} >
              <%= item[:title] || render_slot(item) %>
            </.button>
          <% end %>
        <% end %>

        <%= if assigns[:custom_buttons] do %>
          <%= render_slot(@inner_block) %>
        <% end %>
      </div>
    </div>
    <div class="inline md:hidden">
      <.dropdown {%{
        class: assigns[:class_dropdown],
        classbutton: assigns[:classbutton_dropdown]||"",
        classdrop: assigns[:class_dropdropdown],
        buttons: @buttons
      }} >
      <%= assigns[:title_dropdown]  %>
      </.dropdown>
    </div>

    """
  end
  @spec button_circle_group(any) :: Phoenix.LiveView.Rendered.t()
  def button_circle_group(assigns) do
      ~H"""
        <span x-data="{ isCompactMode: $persist(false).as('isCompactMode') }" >
          <div
            class={"flex -space-x-4 ml-6 #{assigns[:class]}"}

            role="group">
            <%= if @buttons != nil do %>
              <%= for item <- @buttons do %>
                <.circle_button {item} />
                <% end %>
              <% end %>
          </div>
        </span>
      """
    end

end
