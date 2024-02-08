defmodule KajoolyTemplateTailwindWeb.GenericLive.Timeline do
  #import Phoenix.LiveView.Helpers
  use Phoenix.Component

  #alias Phoenix.LiveView.JS
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  @doc """

  Timeline

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Timeline

  ## Examples


  """
  ###<.name_user class="flex absolute -left-4 justify-center items-center " text={item[:name]} width="32" height="32"/>
    def chat_timeline(assigns) do
     ~H"""
        <ol class="relative border-l border-gray-200 dark:border-gray-700 ">
          <%= for item <- assigns[:list] do %>
          <div class="rounded-full h-8 w-8 bg-gray-500">--</div>
          <li class="mb-4 ml-6">
              <div class="p-4 bg-white rounded-lg border border-gray-200 shadow-sm dark:bg-gray-700 dark:border-gray-600">
                  <div class="justify-between items-center mb-3 sm:flex">
                      <time class="mb-1 text-xs font-normal text-gray-400 sm:order-last sm:mb-0" x-data={"{ date: '#{item[:timestamp]}'}"} x-timeago="date"></time>
                      <div class="text-sm font-normal text-gray-500 lex dark:text-gray-300"><span class="font-semibold"><%= item[:name] %></span> <%= item[:act] %>  <%= item[:title] %></div>
                  </div>
                  <div
                    class="p-3 text-xs italic font-normal text-gray-500 bg-gray-50 rounded-lg border border-gray-200 dark:bg-gray-600 dark:border-gray-500 dark:text-gray-300"

                  ><%= item[:text]
                  |> String.split("\n", trim: false)
                  |> Enum.intersperse(Phoenix.HTML.Tag.tag(:br)) %></div>
              </div>
            </li>
          <% end %>
        </ol>
      """
    end

end
