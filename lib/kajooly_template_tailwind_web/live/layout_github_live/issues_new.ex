defmodule KajoolyTemplateTailwindWeb.LayoutsLive.IssuesNew do
  #use KajoolyTemplateTailwindWeb, :live_view

  import  KajoolyTemplateTailwindWeb.GenericLive.Breadcrum
  import KajoolyTemplateTailwindWeb.GenericLive.Cards
  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  import KajoolyTemplateTailwindWeb.GenericLive.Modal
  import KajoolyTemplateTailwindWeb.LayoutsLive.HorizontalNavigationGh

  import KajoolyTemplateTailwindWeb.LayoutsLive.FakeDb

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, notifications: notifications(), recent_files: recent_files(), files: files(), issues: issues())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :assignments, _params) do
    socket
    |> assign(:page_title, "New Post")
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
