defmodule KajoolyTemplateTailwindWeb.GenericLive.Steper do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  @doc """

  Steper

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Steper

  ## Examples


  """
  def steper(assigns) do
    ~H"""
    <ol class={" #{assigns[:class] || "items-right flex w-full"} "}  x-data="{ isCompactMode: $persist(false).as('isCompactMode'), tooltip : false }" @mouseover.away="{tooltip = false}" >
      <%= if @list != nil do %>
        <%= for item <- @list do %>
          <li class={" #{ if item[:active] do "flex-1" else "flex-0" end } mb-6 sm:mb-0 flex"}>
            <div class="flex-0 pr-4">
              <div class={"flex items-center justify-center  font-medium rounded-full  focus:z-10   #{item[:border] || " border-2 border-white dark:border-gray-800 "} #{item[:color_class] || " text-gray-600 dark:text-white bg-pink-300 dark:bg-pink-700 hover:bg-pink-600 dark:hover:bg-pink-600 hover:text-pink-100 "} #{item[:class]}"}
              :class="isCompactMode ? 'w-8 h-8 text-xs p-2':'w-10 h-10 text-sm p-4'" title={item[:title]} x-transition><%= item[:index]%></div>

            </div>
            <div class={" #{ if item[:active] do "flex-1 border-b border-gray-200 dark:border-gray-700 pl-2 pr-8 pt-3 text-sm" else "flex-1 border-b border-gray-200 dark:border-gray-700 text-gray-500 text-xs py-3 px-4 hidden" end } "}>
              <div class={" #{ if item[:active] do " " else "hidden lg:inline" end } "} >
              <%= item[:title] %>
              </div>
            </div>
          </li>
        <% end %>
      <% end %>


    </ol>

    """
  end

end
