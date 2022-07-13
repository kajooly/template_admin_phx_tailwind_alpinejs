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
    <ol class={" #{assigns[:class] || "items-right flex w-full"} "}>
      <%= if @list != nil do %>
        <%= for item <- @list do %>
          <% wc = (100 / length(@list) )  %>
          <li class={" #{ if item[:active] do "md:min-w-[20%] lg:min-w-[#{wc}%]" else "max-w-[50px] md:min-w-[10%] lg:min-w-[#{wc}%]" end } mb-6 sm:mb-0 flex"}>
            <div class="flex-0">
              <.name_user text={item[:index]}
                cicle_color={if item[:active] do assigns[:cicle_color_active] else assigns[:cicle_color] end}
                border_color={if item[:active] do assigns[:border_color_active] else assigns[:border_color] end}
                />
            </div>
            <div class={" #{ if item[:active] do "flex-1 border-b border-gray-500 px-8 py-2 text-sm" else "flex-1 border-b border-gray-500 text-gray-500 text-xs py-3 px-4" end } "}>
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
