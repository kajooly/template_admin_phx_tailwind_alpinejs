defmodule KajoolyTemplateTailwindWeb.LayoutsLive.HorizontalNavigation do
  import Phoenix.LiveView.Helpers

  import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup
  import KajoolyTemplateTailwindWeb.GenericLive.Icons



  def horizontal_navigation(assigns) do

    class = " w-full lg:w-24 md:flex-initial  "
    color_class = "text-gray-700 bg-gray-50   focus:ring-gray-700 focus:text-gray-7 hover:text-gray-800 dark:bg-gray-900  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-500 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 flex my-2 rounded text-xs ml-2"
    classbutton_dropdown = "text-gray-700 bg-gray-50   focus:ring-gray-700 focus:text-gray-7 hover:text-gray-800 dark:bg-gray-800  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-500 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 flex py-3 rounded text-xs w-full"
    class_dropdown = "min-w-[50%] mr-auto"
    class_dropdropdown = "absolute left-0 top-15 flex flex-col w-60 mt-3 border rounded-lg  shadow-lg border-gray-100  dark:border-gray-700
      bg-white
      dark:border-gray-800
      dark:bg-gray-900
      z-50"
    ~H"""

      <.button_group classbutton_dropdown={classbutton_dropdown} class_dropdown={class_dropdown} class_dropdropdown={class_dropdropdown}} title_dropdown="Link 1."
      >
        <:dropdown_title>
          <.icons_window_stack class="mr-3 hidden lg:inline" /> Link 1
        </:dropdown_title>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_window_stack class="mr-3 hidden lg:inline" /> Link 1
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new",
              active: true
            }
          }>
          <.icons_eye class="mr-3 hidden lg:inline" /> Link 2
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_body_text class="mr-3 hidden lg:inline" /> Link 3
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_door_open class="mr-3 hidden lg:inline" /> Link 4
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_trash class="mr-3 hidden lg:inline" /> Link 5
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_key class="mr-3 hidden lg:inline" /> Link 6
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_exclamation_triangle_fill class="mr-3 hidden lg:inline" /> Link 7
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              to: "#new"
            }
          }>
          <.icons_eye class="mr-3 hidden lg:inline" /> Link 8
        </:buttons>
        <:buttons
          {%{
              class: class,
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
