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


end
