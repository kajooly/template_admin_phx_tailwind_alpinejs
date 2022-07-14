defmodule KajoolyTemplateTailwindWeb.GenericLive.Modal do
  import Phoenix.LiveView
  import Phoenix.LiveView.Helpers

  alias Phoenix.LiveView.JS

  @doc """
  Renders a live component inside a modal.

  The rendered modal receives a `:return_to` option to properly update
  the URL when the modal is closed.

  ## Examples

      <.modal return_to={Routes.layouts_index_path(@socket, :index)}>
        <.live_component
          module={KajoolyTemplateTailwindWeb.LayoutsLive.FormComponent}
          id={@layouts.id || :new}
          title={@page_title}
          action={@live_action}
          return_to={Routes.layouts_index_path(@socket, :index)}
          layouts: @layouts
        />
      </.modal>
  """
  def modal_template(assigns) do
    assigns = assign_new(assigns, :return_to, fn -> nil end)
    IO.inspect assigns, label: "assigns modal"
    ~H"""

  <div id="modal" class="phx -modal fade-in z-50 relative "  phx-remove={hide_modal()}>
    <div class="absolute bg-white rounded-lg shadow dark:bg-gray-700 mx-auto">
            <!-- Modal header -->
            <div class="flex items-start justify-between p-4 border-b rounded-t dark:border-gray-600">
                <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                    <%= assigns[:title] %>
                </h3>
                <%= if @return_to do %>
                  <%= live_patch to: @return_to,
                    id: "close",
                    class: "text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white",
                    phx_click: hide_modal() do
                  %>
                    <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                  <% end %>
                <% else %>
                  <a id="close" href="#" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white" phx-click={hide_modal()}><svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg></a>
                <% end %>
            </div>
            <!-- Modal body -->
            <div class="p-6 space-y-6">
              <%= render_slot(@inner_block) %>
            </div>
            <!-- Modal footer -->
        </div>

    </div>
    """
  end
  def modal_footer(assigns) do
    assigns = assign_new(assigns, :return_to, fn -> nil end)
    ~H"""
      <div class="flex items-center p-6 space-x-2 border-t border-gray-200 rounded-b dark:border-gray-600">

          <%= render_slot(@inner_block) %>
          <%
            # <button data-modal-toggle="defaultModal" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">I accept</button>
            # <button data-modal-toggle="defaultModal" type="button" class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-600">Decline</button>
            %>
      </div>
    """
  end

  defp hide_modal(js \\ %JS{}) do
    js
    |> JS.hide(to: "#modal", transition: "fade-out")
    |> JS.hide(to: "#modal-content", transition: "fade-out-scale")
  end
end
