defmodule KajoolyTemplateTailwindWeb.LayoutsLive.PortalClientesLista do
  use KajoolyTemplateTailwindWeb, :live_view

  import  KajoolyTemplateTailwindWeb.GenericLive.Breadcrum
  import KajoolyTemplateTailwindWeb.GenericLive.Table
  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup
  import KajoolyTemplateTailwindWeb.GenericLive.Dropdown
  import KajoolyTemplateTailwindWeb.GenericLive.Badges

  import KajoolyTemplateTailwindWeb.LayoutsLive.FakeDb

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, list: list(), recent_files: recent_files(), files: files())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Inicio de clientes")
    |> assign(:list, [%{
      id: "",
      short_id: "",
      type: "Acta de naciemiento",
      title: "CURPQWE-1234-QWER-123",
      subtitle: "Solicitud de Acta de naciemiento",
      created_by: "Roberto Torres",
      status: "Proceso",
      state: "Abierto",
      created_at: "2022-06-22 12:38",
      updated_at: "2022-06-22 12:38"
    }])
    #|> put_flash(:info, "Alerta de información ")
    #|> put_flash(:error, "Alerta de Error 404")
    #|> put_flash(:warning, "Alerta de Aviso ")
    #|> put_flash(:success, "Alerta de Éxito ")
  end

end
