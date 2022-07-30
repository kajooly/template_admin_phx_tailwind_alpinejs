defmodule KajoolyTemplateTailwindWeb.Router do
  use KajoolyTemplateTailwindWeb, :router
  import KajoolyTemplateTailwindWeb.TemplateConfig

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {KajoolyTemplateTailwindWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KajoolyTemplateTailwindWeb, assigns: template_config(%{}) do
    pipe_through :browser

    get "/", PageController, :index
    get "/auth_registration", PageController, :auth_registration
    live "/layout/list", LayoutsLive.Index, :index
    live "/layout/resumen", LayoutsLive.Show, :index
    live "/layout/sitemap", LayoutsLive.Sitemap, :index
    live "/layout/settings", LayoutsLive.Setting, :index
    live "/layout/table", LayoutsLive.Table, :index
    live "/layout/files", LayoutsLive.Files, :index
    live "/layout/notifications", LayoutsLive.Notifications, :index
    live "/layout/colors", LayoutsLive.Colors, :index
    live "/layout/grid", LayoutsLive.Grid, :index
    live "/layout/profile", LayoutsLive.Profile, :index

    live "/layout/step-a", LayoutsLive.StepA, :index


    live "/layout/issues", LayoutsLive.IssuesList, :index
    live "/layout/github/issues", LayoutsLive.Issues, :index
    live "/layout/github/issues/new", LayoutsLive.IssuesNew, :index
    live "/layout/github/issues/new/assignments", LayoutsLive.IssuesNew, :assignments
    live "/layout/github/issues/show", LayoutsLive.IssuesShow, :index

    live "/layout/brief/step_a", LayoutsLive.BriefStepA, :index
    live "/layout/brief/step_b", LayoutsLive.BriefStepB, :index
    live "/layout/brief/step_c", LayoutsLive.BriefStepC, :index


    live "/layout/portal/clientes", LayoutsLive.PortalClientes, :index
    live "/layout/portal/clientes/list", LayoutsLive.PortalClientesLista, :index




  end

  # Other scopes may use custom stacks.
  # scope "/api", KajoolyTemplateTailwindWeb do
  #   pipe_through :api
  # end


end
