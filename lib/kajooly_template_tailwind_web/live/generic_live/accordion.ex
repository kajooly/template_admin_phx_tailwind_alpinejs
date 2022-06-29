defmodule KajoolyTemplateTailwindWeb.GenericLive.Accordion do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button

  @doc """

  Sitemap


  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Sitemap


  ## Examples

    <.accordion
      accordions={[
          %{
            title: "Titulo 1",
            list: [
              %{
                title: "Título 1.1",
                to: "#",
              },
              %{
                title: "Título 1.2",
                to: "#",
              },
            ]
          },
          %{
            title: "Titulo 2",
            class: "",
            list: [
              %{
                title: "Titulo 2.1",
                to: "#",
                class: ""
              },
              %{
                title: "Titulo 2.2",
                to: "#",
                class: ""
              }
            ]
          }
        ]}
    />

  """
  def accordion(assigns) do
    list = assigns.accordions || assigns.list
    IO.inspect list, label: "LIST ---"
    ~H"""
    <ul class={"space-y-2 #{assigns[:class]}"}>
      <%= for item <- list  do %>
        <li x-data={"{ expanded: #{item[:expanded] || "false"} }"} class=" items-center p-2 w-full text-base font-normal text-gray-900 rounded-lg transition duration-75 group ">
          <%= if item[:list] != nil  do %>
            <button @click="expanded = ! expanded" class="flex items-center p-2 w-full text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700 w-full"><%= item[:title] || "título" %>
            <svg sidebar-toggle-item class="w-6 h-6 ml-auto mr-8" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </button>
            <ul class={" py-2 space-y-2 w-full #{ if assigns[:border] do "border-l-2 ml-4" end }"} x-show="expanded" x-collapse>
              <%= for subitem <- item[:list]  do %>
                <%= if subitem[:list] != nil  do %>
                  <%= for sublist <- item[:list]  do %>
                  <.accordion
                    class="ml-2"
                    border={assigns[:border]}
                    accordions={[sublist]}
                    />
                  <% end %>
                <% else %>
                  <li>
                    <a href="#" class="flex items-center p-2 pl-11 w-full text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700"><%= subitem[:title] || "subtítulo" %></a>
                  </li>
                <% end %>

              <% end %>
              </ul>
            <% else %>
              <%= live_patch to: assigns[:to], class: "  " do %>
                <%= item[:title] || "subtítulo" %>
              <% end %>
            <% end %>
        </li>
      <% end %>
    </ul>

    """
  end

end
