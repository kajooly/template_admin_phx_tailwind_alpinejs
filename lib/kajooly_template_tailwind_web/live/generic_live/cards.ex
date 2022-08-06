defmodule KajoolyTemplateTailwindWeb.GenericLive.Cards do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers
  import KajoolyTemplateTailwindWeb.GenericLive.Button
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
      <div class={ assigns[:class] || "p-4 mb-3 w-full bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700 #{assigns[:add_class]}" }>
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
        <div class="flex  mb-2">
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

  def item_list_card (assigns) do
    ~H"""
        <tr class="border-b dark:bg-gray-800 dark:border-gray-700 odd:bg-white even:bg-gray-50 odd:dark:bg-gray-800 even:dark:bg-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
        <td scope="row" colspan="2" class="flex px-6 pt-1 pb-1 text-left font-medium text-gray-900 dark:text-white whitespace-nowrap">
          <div class="flex-1 pt-1">
          <%= if assigns[:to]!=nil do  %>
            <%= live_patch  to: assigns[:to] do %>
              <%= assigns[:title] || "Sin nombre"%>  <br/>
              <small class="text-gray-600 dark:text-gray-400"><em><%= assigns[:sub_title] %> </em></small>
            <% end %>
          <% else %>
            <%= assigns[:title] || "Sin nombre"%>  <br/>
            <small class="text-gray-600 dark:text-gray-400"><em><%= assigns[:sub_title] %> </em></small>
          <% end %>

          </div>

          <div class={"flex-0 #{assigns[:button_close_class] || "pt-3.5"}"}>

          <%= if assigns[:button_close] do  %>
            <%= live_patch "X", to: assigns[:button_close], class: "text-red-700 hover:text-white border border-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-3 py-1 text-center mr-2 mb-2 mt-2 dark:border-red-500 dark:text-red-500 dark:hover:text-white dark:hover:bg-red-600 dark:focus:ring-red-900", ":class": "isCompactMode ? 'py-2':'py-6" %>
          <% else %>
            <%= render_slot(@inner_block) %>
          <% end %>
          </div>

        </td>
      </tr>
    """
  end

end
