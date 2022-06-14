defmodule KajoolyTemplateTailwindWeb.GenericLive.Button do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  @doc """

  Button

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Button

  ## Examples


    <.button {%{
        title: "+ Nuevo",
        borderradius: "only",
        class: " w-full lg:w-24 md:flex-initial pt-2.5 md:mb-3",
        border: "border-green-500 dark:border-green-500",
        color_class: "text-green-700 bg-green-400   focus:ring-green-700 focus:text-green-7 hover:text-green-800 dark:bg-green-700  dark:text-white dark:hover:text-white dark:hover:bg-green-600 dark:focus:ring-green-500 dark:focus:text-white dark:text-green-300 hover:text-green-700",
        to: "#new"
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
    <span x-data="{ isCompactModeButton: $persist(false).as('isCompactMode') }" >
    <%= live_patch to: assigns[:to], class: "px-4 text-center font-medium focus:ring-2 focus:z-10 #{assigns[:color_class] || "text-gray-900 bg-white   focus:ring-gray-700 focus:text-gray-700 dark:bg-gray-700  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-500 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 "} #{assigns[:border] || "dark:border-gray-600 border-gray-200 hover:bg-gray-100 "} #{assigns[:class]} #{
      case assigns[:borderradius] do
      "left" ->  "rounded-l-lg border border-r-0"
      "center" -> "border-t border-b"
      "right" -> "rounded-r-md border border-l-0"
      "only" -> "rounded-lg border"
      "box" -> " border"
      _ -> ""
      end}",
      style: assigns[:style] || "__no_style: false;",
      ":class": "isCompactModeButton ? 'pt-2 pb-2 text-xs':'py-2 text-sm'",
      type: "button"
      do %>
      <%= assigns[:title] || render_slot(@inner_block) %>
    <% end %>
    </span>
    """
  end
  @doc """

  Button

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Button

  ## Examples


    <.circle_button {%{
       title: "A",
        to: "#",
        borderradius: "center",
        class: "ring-2 ring-success-300 dark:ring-success-500",
        color_class: "text-purple-600 dark:text-white bg-purple-300 dark:bg-purple-700 hover:bg-purple-600 dark:hover:bg-purple-600 hover:text-purple-100"
    }} />
    -----
    <.circle_button %{
      to: "#",
      borderradius: "center",
      class: "ring-2 ring-success-300 dark:ring-success-500",
      color_class: "text-purple-600 dark:text-white bg-purple-300 dark:bg-purple-700 hover:bg-purple-600 dark:hover:bg-purple-600 hover:text-purple-100"
    } >
        Breadcrum title
    </.circle_button>

  """
  def circle_button(assigns) do
    ~H"""
    <span x-data="{ isCompactMode: $persist(false).as('isCompactMode') }" >
    <%= live_patch to: assigns[:to], class: " flex items-center justify-center  font-medium rounded-full  focus:z-10   #{assigns[:border] || " border-2 border-white dark:border-gray-800 "} #{assigns[:color_class] || " text-gray-600 dark:text-white bg-gray-300 dark:bg-gray-700 hover:bg-gray-600 dark:hover:bg-gray-600 hover:text-gray-100 "} #{assigns[:class]} #{
      case assigns[:borderradius] do
      "only" -> " "
      _ -> "  "
      end}",
      ":class": "isCompactMode ? 'w-8 h-8 text-xs':'w-10 h-10 text-sm'",
      style: assigns[:style] || "__no_style: false;",
      type: "button"
      do %>
      <%= assigns[:title] || render_slot(@inner_block) %>
    <% end %>
    </span>
    """
  end

end
