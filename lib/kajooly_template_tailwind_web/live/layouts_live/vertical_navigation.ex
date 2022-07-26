defmodule KajoolyTemplateTailwindWeb.LayoutsLive.VerticalNavigation do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  def vertical_navigation(assigns) do

    class_button = " relative inline-flex items-center w-full px-4 py-2 text-sm font-medium border-b border-gray-200 rounded hover:bg-gray-100  dark:bg-gray-800 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-gray-700 dark:hover:bg-gray-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white mt-2 text-xs py-2"
    color_class=""

    classbutton_dropdown = "text-gray-700 bg-gray-50   focus:ring-gray-700 focus:text-gray-7 hover:text-gray-800 dark:bg-gray-800  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-500 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 flex py-3 rounded text-xs w-full"
    class_dropdown = "min-w-[50%] mr-auto"
    class_dropdropdown = "absolute left-0 top-15 flex flex-col w-60 mt-3 border rounded-lg  shadow-lg border-gray-100  dark:border-gray-700
      bg-white
      dark:border-gray-800
      dark:bg-gray-900
      z-50"
    ~H"""

      <.button_group classbutton_dropdown={classbutton_dropdown} class_dropdown={class_dropdown} class_dropdropdown={class_dropdropdown}} title_dropdown="Link 1." class=" md:w-48 lg:w-60 text-gray-900 bg-white border border-gray-200 rounded-lg dark:bg-gray-800 dark:border-gray-600 dark:text-white"
      >
        <:dropdown_title>
          <.icons_window_stack class="mr-3 hidden lg:inline" /> General Link 1
        </:dropdown_title>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_window_stack class="mr-3 hidden lg:inline" />General Link 1
        </:buttons>
        <:buttons
          {%{
              group_title: "Sub title group buttons",
              class: class_button,
              color_class: color_class,
              to: "#new",
              active: true
            }
          }>
          <.icons_eye class="mr-3 hidden lg:inline" /> Link 2
        </:buttons>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_body_text class="mr-3 hidden lg:inline" /> Link 3
        </:buttons>
        <:buttons
          {%{
            group_title: "Sub title group buttons",
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_door_open class="mr-3 hidden lg:inline" /> Link 4
        </:buttons>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_trash class="mr-3 hidden lg:inline" /> Link 5
        </:buttons>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_key class="mr-3 hidden lg:inline" /> Link 6
        </:buttons>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_exclamation_triangle_fill class="mr-3 hidden lg:inline" /> Link 7
        </:buttons>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_eye class="mr-3 hidden lg:inline" /> Link 8
        </:buttons>
        <:buttons
          {%{
              class: class_button,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_outline_gear class="mr-3 hidden lg:inline" /> Link 9
        </:buttons>

      </.button_group>
    """
  end

end
