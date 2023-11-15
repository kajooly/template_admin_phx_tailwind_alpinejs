defmodule KajoolyTemplateTailwindWeb.GenericLive.Cards do
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Icons

  @doc """

  Cards

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Cards

  ## Examples

    <.button_group
      buttons={[
          %{
            title: "Borrador",
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }
        ]}
    />
    ---
    <.button_group>
      <buttons {%{
            to: "#",
            borderradius: "left",
            border: "border-red-500 dark:border-red-500",
            class: "border-b-4"
          }} >
        Título del botón
      </.buttons>
    </.button_group>

  """
  def simple_card_a(assigns) do
    #IO.inspect assigns.link   , label: "assings"
    ~H"""
      <div class={ assigns[:class] || default_class_content_card(%{class: assigns[:add_class]}) }>
        <div class="flex">
          <h5 class="flex-1 mb-2 text-xs font-bold tracking-tight text-gray-900 dark:text-white pt-2">
            <%= render_slot(@title) %>
          </h5>
            <%= render_slot(@icon) %>
        </div>
        <p class="text-[12px]">
        <%= render_slot(@body) %>
        </p>
        <%= if @link != nil do %>
            <%= for item <- @link do %>


        <%= live_patch to: item[:to], class: "text-xs font-medium text-blue-700 focus:outline-none bg-white  hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-blue-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700", ":class": "isCompactMode ? 'py-2':'py-6" do render_slot(item) end %>

        <% end %>
        <% end %>
      </div>

    """
  end
  @doc """

  default_class_content_card

  Live Controler code:

    import KajoolyTemplateTailwindWeb.GenericLive.Cards

  ## Examples


    <div class={default_class_content_card(%{ class: "" })}>
      ...
    </div>
  """
  def default_class_content_card(assigns) do
    "#{if assigns[:hoover] do "dark:hover:bg-gray-700 hover:bg-gray-100" end}
     #{assigns[:p] || "px-4 py-1"}
     #{assigns[:m] || "mb-3"}
     #{assigns[:w] || "w-full"}
     #{assigns[:shadow] || "shadow-md"}
     #{assigns[:border] || "rounded-lg border border-gray-200 dark:border-gray-700"}
     #{assigns[:bg] || "bg-white dark:bg-gray-800 dark:border-gray-700"}
     #{assigns[:class]}"
  end

  @doc """

        <.list_card
            title="Asignaciones"
            to={Routes.layouts_issues_new_path(@socket, :assignments)}
        >
          <:list title="Título 1" sub_title="Subtitle asdasdasd......"
            button_close="#"  />
          <:list
            title="Título 2"
            sub_title="Subtitle asdasdasd......"
            button_close="#"
           />
          <:list
            title="Título 2"
            sub_title="Subtitle asdasdasd......"
            button_close="#"
            to="#asd"
           />
          <:list title="Título 3" sub_title="Subtitle asdasdasd......">
          adasad
          </:list>
        </.list_card>



        <.list_card
            title="Etiquetas"
            list={[
              %{
                title: "titulo 1",
                sub_title: "Subtitle asdasdasd......",
                button_close: ""
              }
            ]}
        >
        </.list_card>


  """
  def list_card(assigns) do
    ~H"""
      <div class="w-full static ">
        <div class="md:flex  mb-2">
          <div class="flex-1">
            <h6 class="mb-3 text-sm font-medium text-gray-900 dark:text-gray-600 text-left pl-4 mt-1"> <%= assigns[:title] %> </h6>
          </div>
          <div class="flex-0 pr-2">
            <%= if assigns[:to] != nil do %>
              <%= live_patch  to: assigns[:to], class: "sm:inline-block text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:outline-none focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-1.5", type: "button" do %>
                <.icons_plus />
              <% end %>
            <% end %>
          </div>
        </div>
        <div class="flex mb-3">
          <div class="flex-1">
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg max-w-[95%] mx-auto dark:border-2  dark:border-gray-600">
              <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <tbody>
                  <%= render_slot(@inner_block) %>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    """
  end
  def list_card_class_button(assigns) do
    "text-#{assigns[:border_color] || assigns[:color] || "red"}-700 hover:text-white border border-#{assigns[:border_color] || assigns[:color] || "red"}-700 hover:bg-#{assigns[:bg_color] || assigns[:color] || "red"}-800 focus:ring-4 focus:outline-none focus:ring-#{assigns[:border_color] || assigns[:color] || "red"}-300 font-medium rounded-lg text-sm px-3 py-1.5 text-center mr-2 mb-2 mt-3 dark:border-#{assigns[:border_color] || assigns[:color] || "red"}-500 dark:text-#{assigns[:border_color] || assigns[:color] || "red"}-500 dark:hover:text-white dark:hover:bg-#{assigns[:bg_color] || assigns[:color] || "red"}-600 dark:focus:ring-#{assigns[:border_color] || assigns[:color] || "red"}-900 #{assigns[:class]}"
  end
  def list_card_class_button_compact_mode(_assigns) do
    "isCompactMode ? 'py-2':'py-6"
  end

  def item_list_card (assigns) do
    ~H"""
      <tr class="border-b dark:bg-gray-800 dark:border-gray-700 odd:bg-white even:bg-gray-50 odd:dark:bg-gray-800 even:dark:bg-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
        <td scope="row" colspan="2" class="flex px-6 pt-1 pb-1 text-left font-medium text-gray-900 dark:text-white whitespace-nowrap">
          <div class="flex-1 pt-1 pr-3 whitespace-normal " title={assigns[:title]}>
          <%= if assigns[:to]!=nil do  %>
            <%= live_patch  to: assigns[:to] do %>
              <%= if assigns[:pre_title] != nil do %> <small class="text-gray-600 dark:text-gray-400"><em><%= assigns[:pre_title] %> </em></small> <br /><% end %>
              <%= if String.length(assigns[:title]) > 20 do "#{String.slice(assigns[:title], 0..20)}..." else assigns[:title] end %>  <br/>
              <%= if assigns[:sub_title] != nil do %> <small class="text-gray-600 dark:text-gray-400"><em><%= assigns[:sub_title] %> </em></small> <br /><% end %>
            <% end %>
          <% else %>
            <%= if assigns[:pre_title] != nil do %> <small class="text-gray-600 dark:text-gray-400"><em><%= assigns[:pre_title] %> </em></small> <br /><% end %>
            <%= if String.length(assigns[:title]) > 20 do "#{String.slice(assigns[:title], 0..20)}..." else assigns[:title] end %>  <br/>
            <%= if assigns[:sub_title] != nil do %> <small class="text-gray-600 dark:text-gray-400"><em><%= assigns[:sub_title] %> </em></small> <br /><% end %>
          <% end %>
          </div>
          <div class={"flex-0 #{assigns[:button_close_class] || "pt-3.5"}"}>
            <%= if assigns[:button_close] do  %>
              <%= live_patch "X", to: assigns[:button_close], class: "text-red-700 hover:text-white border border-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-3 py-1 text-center mr-2 mb-2 mt-2 dark:border-red-500 dark:text-red-500 dark:hover:text-white dark:hover:bg-red-600 dark:focus:ring-red-900", ":class": "isCompactMode ? 'py-2':'py-6", title: "Borrar" %>
            <% else %>
              <%= render_slot(@inner_block) %>
            <% end %>
          </div>
        </td>
      </tr>
    """
  end

end
