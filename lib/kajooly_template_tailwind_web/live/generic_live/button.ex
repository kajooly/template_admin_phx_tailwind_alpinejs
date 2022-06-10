defmodule KajoolyTemplateTailwindWeb.GenericLive.Button do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  @doc """

  Button

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Button

  ## Examples


    <.button {%{
      title: "+ nuevo",
      borderradius: "only",
      class: ""
    }} />
    -----
    <.button %{
      to: "#",
      borderradius: "left",
      border: "border-red-500 dark:border-red-500",
      class: "border-b-4"
    } >
        Breadcrum title
    </.button>

  """
  def button(assigns) do
    ~H"""
    <span x-data="{ isCompactMode: $persist(false).as('isCompactMode') }" >
    <%= live_patch to: assigns[:to], class: " px-4 text-center  font-medium text-gray-900 bg-white  focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:bg-gray-700  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-blue-500 dark:focus:text-white dark:border-gray-600 #{assigns[:border] || " border-gray-200 hover:bg-gray-100 "} hover:text-blue-700 focus:z-10 #{assigns[:class]} #{
      case assigns[:borderradius] do
      "left" ->  "rounded-l-lg border border-r-0"
      "center" -> "border-t border-b"
      "right" -> "rounded-r-md border border-l-0"
      "only" -> "rounded-lg border"
      _ -> " border"
      end}",
      ":class": "isCompactMode ? 'pt-1 pb-1.5 text-xs':'py-2 text-sm'",
      type: "button"
      do %>
      <%= assigns[:title] || render_slot(@inner_block) %>
    <% end %>
    </span>
    """
  end

end
