defmodule KajoolyTemplateTailwindWeb.LayoutsLive.HorizontalNavigationGh do
  import Phoenix.LiveView.Helpers

  import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup
  import KajoolyTemplateTailwindWeb.GenericLive.Icons





  def horizontal_navigation(assigns) do

    class = " w-full  md:flex-initial  "
    color_class = "text-gray-700 bg-gray-50   focus:ring-gray-700 focus:text-gray-7 hover:text-gray-800 dark:bg-gray-900  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-500 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 flex my-2 rounded text-xs ml-2"
    classbutton_dropdown = "text-gray-700 bg-gray-50 w-min-[400px]  focus:ring-gray-700 focus:text-gray-7 hover:text-gray-800 dark:bg-gray-800  dark:text-white dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-500 dark:focus:text-white dark:text-gray-300 hover:text-gray-700 flex py-3 rounded-sm text-xs w-full "
    classbutton_span = "  flex-1  "

    class_dropdown = "min-w-[50%] mr-auto"
    class_dropdropdown = "absolute left-0 top-15 flex flex-col w-60 mt-3 border rounded-lg  shadow-lg border-gray-100  dark:border-gray-700
      bg-white
      dark:border-gray-800
      dark:bg-gray-900
      z-50"
    ~H"""

      <.button_group classbutton_dropdown={classbutton_dropdown} class_dropdown={class_dropdown} class_dropdropdown={class_dropdropdown}} title_dropdown="Link 1." class="flex inline-flex rounded-md shadow w-full"
      >
        <:dropdown_title>
          <.icons_window_stack width="16" height="16" class="mr-3 mt-0.5 hidden lg:inline" /> Resumen
        </:dropdown_title>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              classbutton_span: classbutton_span,
              to: "#new"
            }
          }>
          <.icons_window_stack width="12" height="12" class="mr-3 mt-0.5 hidden lg:inline" /> Resumen
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              classbutton_span: classbutton_span,
              to: "#new",
              active: true
            }
          }>
          <.icons_eye width="12" height="12" class="mr-3 mt-0.5 hidden lg:inline" /> Tareas
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              classbutton_span: classbutton_span,
              to: "#new"
            }
          }>
          <.icons_body_text width="12" height="12" class="mr-3 mt-0.5 hidden lg:inline" /> Branchs
        </:buttons>

        <:buttons
          {%{
              class: class,
              color_class: color_class,
              classbutton_span: classbutton_span,
              to: "#new"
            }
          }>
          <.icons_trash width="12" height="12" class="mr-3 mt-0.5 hidden lg:inline" /> Eliminar
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              classbutton_span: classbutton_span,
              to: "#new"
            }
          }>
          <.icons_key width="12" height="12" class="mr-3 mt-0.5 hidden lg:inline" /> Acceso
        </:buttons>
        <:buttons
          {%{
              class: class,
              color_class: color_class,
              classbutton_span: classbutton_span,
              to: "#new"
            }
          }>
          <.icons_outline_gear width="12" height="12" class="mr-3 mt-0.5 hidden lg:inline" /> Opciones
        </:buttons>

      </.button_group>
    """
  end

end
