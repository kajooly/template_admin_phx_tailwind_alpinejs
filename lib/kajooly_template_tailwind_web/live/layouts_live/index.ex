defmodule KajoolyTemplateTailwindWeb.LayoutsLive.Index do
  use KajoolyTemplateTailwindWeb, :live_view

  import  KajoolyTemplateTailwindWeb.GenericLive.Breadcrum
  import KajoolyTemplateTailwindWeb.GenericLive.Table
  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup
  import KajoolyTemplateTailwindWeb.GenericLive.Dropdown
  import KajoolyTemplateTailwindWeb.GenericLive.Badges
  import KajoolyTemplateTailwindWeb.GenericLive.Search

  import KajoolyTemplateTailwindWeb.LayoutsLive.FakeDb

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, list: list())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end


  @impl true
  def handle_event("readqr", params, socket) do
    # En`params` esta la info que hay que actualizar en los datos en "owners.devices" Campo metadata
    # IO.inspect "---params sync_device---"
    # IO.inspect params
    params_device = %{"hi" => params}

    {:reply, params_device, socket}
  end


  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Lista")
    #|> put_flash(:info, "Alerta de información ")
    #|> put_flash(:error, "Alerta de Error 404")
    #|> put_flash(:warning, "Alerta de Aviso ")
    #|> put_flash(:success, "Alerta de Éxito ")
  end

end
