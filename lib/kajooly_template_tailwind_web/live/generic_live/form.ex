defmodule KajoolyTemplateTailwindWeb.GenericLive.Form do

  @doc """

  Form


  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Form


  ## Examples

  <%= label f, :phone, "Teléfono", class: form_label_class %>
  <%= text_input f, :phone, class: form_input_text_class, type: "tel" %>

  """
  def form_label_class(assigns) do
    "block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300"
  end

  def form_label_class do
    form_label_class(%{})
  end

  def form_input_text_class(assigns) do
    "shadow-sm bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-50 border border-#{ assigns[:border_color] || assigns[:color] || "gray" }-300 text-gray-900 text-sm rounded-lg focus:ring-#{ assigns[:focus_color] || "blue" }-500 focus:border-#{ assigns[:focus_color] || "blue" }-500 block w-full p-2.5 dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-700 dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-#{ assigns[:focus_color] || "blue" }-500 dark:focus:border-#{ assigns[:focus_color] || "blue" }-500 dark:shadow-sm-light"
  end

  def form_input_text_class do
    form_input_text_class(%{})
  end

  def form_select_class(assigns) do
    "bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-50 border border-#{ assigns[:border_color] || assigns[:color] || "gray" }-300 text-gray-900 text-sm rounded-lg focus:ring-#{ assigns[:focus_color] || "blue" }-500 focus:border-#{ assigns[:focus_color] || "blue" }-500 block w-full p-2.5 dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-700 dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-#{ assigns[:focus_color] || "blue" }-500 dark:focus:border-#{ assigns[:focus_color] || "blue" }-500"
  end

  def form_select_class do
    form_select_class(%{})
  end

  def form_input_search(assigns) do
    "block w-full z-20 text-sm text-gray-900 bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-50 rounded-lg  border border-#{ assigns[:border_color] || assigns[:color] || "gray" }-500 focus:ring-#{ assigns[:focus_color] || "blue" }-500 focus:border-#{ assigns[:focus_color] || "blue" }-500 dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-700   dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-500 dark:placeholder-gray-400 dark:text-white dark:focus:border-#{ assigns[:focus_color] || "blue" }-500"
  end
  def form_input_search do
    form_input_search(%{})
  end
  def form_input_search_button(assigns) do
    "absolute p-2 top-0 right-0 text-sm font-medium text-white bg-#{ assigns[:bg_color] || assigns[:color] || "blue"}-700 rounded-r-lg border border-blue-700 hover:bg-#{ assigns[:bg_color] || assigns[:color] || "blue"}-800 focus:ring-4 focus:outline-none focus:ring-#{ assigns[:focus_color] || "blue" }-300 dark:bg-#{ assigns[:bg_color] || assigns[:color] || "blue"}-600 dark:hover:bg-#{ assigns[:bg_color] || assigns[:color] || "blue"}-700 dark:focus:ring-#{ assigns[:focus_color] || "blue" }-800"
  end

  def form_input_search_button do
    form_input_search_button(%{})
  end

  def form_textarea(assigns) do
    "block p-2.5 w-full text-sm text-gray-900 bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-50 rounded-lg border border-#{ assigns[:border_color] || assigns[:color] || "gray" }-300 focus:ring-#{ assigns[:focus_color] || "blue" }-500 focus:border-#{ assigns[:focus_color] || "blue" }-500 dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-700 dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-#{ assigns[:focus_color] || "blue" }-500 dark:focus:border-#{ assigns[:focus_color] || "blue" }-500"
  end

  def form_textarea do
    form_textarea(%{})
  end

  def form_checkbox(assigns) do
    "w-4 h-4 bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-50 rounded border border-#{ assigns[:border_color] || assigns[:color] || "gray" }-300 focus:ring-3 focus:ring-#{ assigns[:focus_color] || "blue" }-300 dark:bg-#{ assigns[:bg_color] || assigns[:color] || "gray"}-700 dark:border-#{ assigns[:border_color] || assigns[:color] || "gray" }-600 dark:focus:ring-#{ assigns[:focus_color] || "blue" }-600 dark:ring-offset-#{ assigns[:border_color] || assigns[:color] || "gray" }-800"
  end

  def form_checkbox do
    form_checkbox(%{})
  end

  def form_checkbox_label(assigns) do
    "ml-2 text-sm font-medium text-gray-900 dark:text-gray-300"
  end

  def form_checkbox_label do
    form_checkbox_label(%{})
  end

end
