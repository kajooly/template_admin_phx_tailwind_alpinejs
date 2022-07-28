defmodule KajoolyTemplateTailwindWeb.GenericLive.Badges do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  @doc """

  Badges

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Badges

    Colors:
    - secondary
    - danger
    - success
    - warning
    - indigo
    - purple
    - pink
    - custom

  ## Examples

      <.badge {%{ color: "danger", title: "Badges title"}} />
      ----
      <.badge color="danger">
          Badges title
      </.badge>
      ----
      <.badge
        color="custom"
        custom="bg-pink-100 text-pink-800 dark:bg-pink-200 dark:text-pink-900"
      >
        Badges title
      </.badge>
  """
  def badge(assigns) do
    ~H"""
      <span
        style={"#{assigns[:style]}"}
        class={"text-xs font-semibold mr-2 px-2.5 py-0.5 rounded #{case assigns[:color] do
        "secondary" -> "bg-gray-100 text-gray-800 dark:bg-gray-700 dark:text-gray-300"
        "danger" -> "bg-red-100 text-red-800 dark:bg-red-200 dark:text-red-900"
        "success" -> "bg-green-100 text-green-800 dark:bg-green-200 dark:text-green-900"
        "warning" -> "bg-yellow-100 text-yellow-800 dark:bg-yellow-200 dark:text-yellow-900"
        "indigo" -> "bg-indigo-100 text-indigo-800 dark:bg-indigo-200 dark:text-indigo-900"
        "purple" -> "bg-purple-100 text-purple-800 dark:bg-purple-200 dark:text-purple-900"
        "pink" -> "bg-pink-100 text-pink-800 dark:bg-pink-200 dark:text-pink-900"
        "custom" -> assigns[:custom] || "bg-pink-100 text-pink-800 dark:bg-pink-200 dark:text-pink-900"
        _ -> "bg-blue-100 text-blue-800 dark:bg-blue-200 dark:text-blue-800"
      end}"}><%= assigns[:title] || render_slot(@inner_block) %></span>
    """
  end

end
