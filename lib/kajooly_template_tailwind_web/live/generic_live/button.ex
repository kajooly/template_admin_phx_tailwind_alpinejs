defmodule KajoolyTemplateTailwindWeb.GenericLive.Button do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Text
  import KajoolyTemplateTailwindWeb.GenericLive.Badges

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
    <span x-data="{ isCompactModeButton: $persist(false).as('isCompactMode') }" class={"#{assigns[:class_span]} focus:z-10 #{ if assigns[:active] != nil do " z-10" end  } " }>
    <%= live_patch to: assigns[:to], class: default_class_button(assigns),
      style: assigns[:style] || "",
      ":class": default_class_copact(),
      type: "button",
      title: assigns[:title] || "",
      target: assigns[:target] || nil,
      disabled: assigns[:disabled] || true
      do %>
      <%= assigns[:title] || render_slot(@inner_block) %>
    <% end %>
    </span>


    """
  end


  def default_class_copact() do
    "isCompactModeButton ? 'pt-2 pb-2 text-xs':'py-2 text-sm'"
  end


  def default_class_button(assigns) do
    "px-4 text-center font-medium focus:ring-2 focus:z-10 #{assigns[:color_class] || " bg-white dark:bg-#{assigns[:color_bg] || assigns[:color]  || "gray"}-700   #{if assigns[:disabled] do " dark:text-gray-500  text-gray-400 " else "  dark:hover:bg-##{assigns[:color_bg] || assigns[:color] || "gray"}}-600 dark:focus:ring-gray-500  focus:ring-gray-700 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 text-gray-900 focus:text-gray-700 dark:text-white dark:hover:text-white" end}  "}  #{assigns[:class]} #{
      case assigns[:borderradius] do
      "left" ->  "rounded-l-md border border-r-0"
      "center" -> "border-t border-b"
      "right" -> "rounded-r-md border border-l-0"
      "only" -> "rounded-lg border"
      "box" -> " border"
      _ -> ""
      end}
      #{assigns[:border] || "dark:border-#{assigns[:color_border] || assigns[:color]  || "gray"}-600 border-#{assigns[:color_border] || assigns[:color]  || "gray"}-200 hover:bg-##{assigns[:color_bg] || assigns[:color] || "gray"}}-100 "}
      #{ if assigns[:active] != nil do " border-l ring-1 ring-sky-400 bg-##{assigns[:color_bg] || assigns[:color] || "gray"}}-100 dark:bg-##{assigns[:color_bg] || assigns[:color] || "gray"}}-600" else " " end  }
      #{ if assigns[:disabled] != nil do " border-l ring-1 ring-gray-100 dark:ring-gray-800 " else " " end  }
      "
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
    id = assigns[:id] || gen_id_key()
    ~H"""

    <span x-data="{ isCompactMode: $persist(false).as('isCompactMode'), tooltip : false }" @mouseover.away="{tooltip = false}"  >
    <span class="absolute "  x-show="tooltip" x-collapse>
      <.badge color="danger">
        <%= assigns[:title] %>
      </.badge>
    </span>
    <%= live_patch to: assigns[:to], class: " flex items-center justify-center  font-medium rounded-full  focus:z-10   #{assigns[:border] || " border-2 border-white dark:border-gray-800 "} #{assigns[:color_class] || " text-gray-600 dark:text-white bg-gray-300 dark:bg-gray-700 hover:bg-gray-600 dark:hover:bg-gray-600 hover:text-gray-100 "} #{assigns[:class]} #{
      case assigns[:borderradius] do
      "only" -> " "
      _ -> "  "
      end}",
      ":class": "isCompactMode ? 'w-8 h-8 text-xs':'w-10 h-10 text-sm'",
      style: assigns[:style] || "__no_style: false;",
      type: "button",
      "alt": assigns[:title] || "",
      title: assigns[:description] || assigns[:title] || "",
      id: id
      do %>
      <%= if assigns[:two_charter] do %>
        <%= text_to_two_char(assigns[:title]) %>
      <% else %>
        <%= assigns[:title] || render_slot(@inner_block) %>
      <% end %>
    <% end %>
    </span>
    """
  end


  @doc """

  default_class_content_list_button

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Button

  ## Examples


    <div class={default_class_content_list_button(%{ class: "" })}>
      ...
    </div>
  """
  def default_class_content_list_button(assigns) do
    "w-full text-sm font-medium text-gray-900 bg-white dark:bg-gray-700 rounded-lg border border-gray-200  dark:border-gray-600 dark:text-white #{assigns[:class]}"
  end

  @doc """

  default_class_list_button

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Button

  ## Examples

 <div class={default_class_content_list_button(%{ class: "" })}>
    <div class={default_class_list_button(%{  class: "" , state: "nil,active,disabled", position, "nil,top,bottom"})}>
      ...
    </div>
  </div>

  """
  def default_class_list_button(assigns) do

    " py-2 px-4 w-full font-medium text-left  border-#{ assigns[:border_color] || assigns[:color] || "gray" }-200  focus:outline-none dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-600
    #{
      case assigns[:state] do
      "active" ->  "cursor-pointer dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-800 text-white bg-blue-700"
      "disabled" -> "bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-100 cursor-not-allowed dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-600 dark:text-#{ assigns[:border_color] || assigns[:color] || "gray" }-400"
      "title" -> " bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-100  dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-800 dark:text-#{ assigns[:border_color] || assigns[:color] || "gray" }-200"
      _ -> "cursor-pointer bg-#{ assigns[:bg_color] || assigns[:color] || "white" } dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-700  hover:bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-100 hover:text-blue-700 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-600 dark:hover:bg-#{ assigns[:bg_color] || assigns[:color] || "gray" }-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white"
      end}
    #{
      case assigns[:position] do
      "top" ->  "rounded-t-lg "
      "bottom" -> " border-t rounded-b-lg"
      _ -> " border-t"
      end}
      #{assigns[:class]||""}
      "
  end

  @doc """

  default_class_content_list_remove_button

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Button

  ## Examples


    <div class={default_class_content_list_remove_button(%{ class: "" })}>
      ...
    </div>
  """
  def default_class_content_list_remove_button(assigns) do
    "text-red-700 hover:text-white border border-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm  text-center dark:border-red-500 dark:text-red-500 dark:hover:text-white dark:hover:bg-red-600 dark:focus:ring-red-900 h-6 w-6 my-auto px-2 py-1 #{assigns[:class]}"
  end


end
