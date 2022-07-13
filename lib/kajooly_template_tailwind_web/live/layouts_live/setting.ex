defmodule KajoolyTemplateTailwindWeb.LayoutsLive.Setting do
  use KajoolyTemplateTailwindWeb, :live_view

  import  KajoolyTemplateTailwindWeb.GenericLive.Breadcrum
  import KajoolyTemplateTailwindWeb.GenericLive.Table
  import KajoolyTemplateTailwindWeb.GenericLive.Button
  import KajoolyTemplateTailwindWeb.GenericLive.ButtonGroup
  import KajoolyTemplateTailwindWeb.GenericLive.Dropdown
  import KajoolyTemplateTailwindWeb.GenericLive.Badges
  import KajoolyTemplateTailwindWeb.GenericLive.Search
  import KajoolyTemplateTailwindWeb.GenericLive.Icons
  import KajoolyTemplateTailwindWeb.LayoutsLive.HorizontalNavigation
  import KajoolyTemplateTailwindWeb.LayoutsLive.VerticalNavigation
  import KajoolyTemplateTailwindWeb.LayoutsLive.FakeDb

  import KajoolyTemplateTailwindWeb.LayoutsLive.SettingsArticleA
  import KajoolyTemplateTailwindWeb.LayoutsLive.SettingsArticleB

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, list: list(), members_access: members_access())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Show")
    #|> put_flash(:info, "Alerta de información ")
    #|> put_flash(:error, "Alerta de Error 404")
    #|> put_flash(:warning, "Alerta de Aviso ")
    #|> put_flash(:success, "Alerta de Éxito ")
  end

end
