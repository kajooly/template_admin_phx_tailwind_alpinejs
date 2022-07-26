defmodule KajoolyTemplateTailwindWeb.LayoutsLive.SettingsArticleB do
  use KajoolyTemplateTailwindWeb, :live_view

  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.List
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers


  def settings_article_b(assigns) do
    ~H"""
    <article class={"#{assigns[:class]}"}>
      <div class="flex">
        <h5 class="flex-1 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
          Manage access

        </h5>
        <.button {%{
          title: "Create team",
          borderradius: "only",
          class: " flex-0 py-1.5 px-5 mr-2 mb-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700",
          border: "",
          color_class: "",
          to: "#new"
        }} />
      </div>
      <div class="flex border border-gray-500 rounded-lg ">
        <%= if assigns[:list]!= nil do %>
          <%= if length(assigns[:list]) == 0 do %>
          <div class="w-full text-center">
            <.icons_users class="mx-auto mt-4" width="48" height="48"/>
            <br/>
            <h3 class="w-full text-center text-xl mb-3">
            You haven't added any teams or people yet
            </h3>
            <p class="text-xs text-gray-500 px-6">
              Organization owners can manage individual and team access to the organization's repositories. Team maintainers can also manage a team's repository access. Learn more about organization access
            </p>
            <br/>
              <.button {%{
                title: "+ Add people",
                borderradius: "only",
                class: " w-[45%] mt-3 mr-3 lg:w-32 md:flex-initial pt-2.5 md:mb-3",
                border: "border-green-500 dark:border-green-500",
                color_class: "text-green-700 bg-green-400   focus:ring-green-700 focus:text-green-7 hover:text-green-800 dark:bg-green-700  dark:text-white dark:hover:text-white dark:hover:bg-green-600 dark:focus:ring-green-500 dark:focus:text-white dark:text-green-300 hover:text-green-700",
                to: "#new"
              }} />
              <.button {%{
                title: "+ Add team",
                borderradius: "only",
                class: " w-[45%] mt-3 lg:w-32 md:flex-initial pt-2.5 md:mb-3",
                border: "border-green-500 dark:border-green-500",
                color_class: "text-green-700 bg-green-400   focus:ring-green-700 focus:text-green-7 hover:text-green-800 dark:bg-green-700  dark:text-white dark:hover:text-white dark:hover:bg-green-600 dark:focus:ring-green-500 dark:focus:text-white dark:text-green-300 hover:text-green-700",
                to: "#new"
              }} />
            </div>

          <% else  %>
          <.list list={assigns[:list]} />
          <% end  %>
        <% end  %>

      </div>
    </article>

    """
  end

end
