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
    live "/layout/list", LayoutsLive.Index, :index
    live "/layout/resumen", LayoutsLive.Show, :index
    live "/layout/sitemap", LayoutsLive.Sitemap, :index
    live "/layout/settings", LayoutsLive.Setting, :index
    live "/layout/table", LayoutsLive.Table, :index
    live "/layout/files", LayoutsLive.Files, :index
    live "/layout/notifications", LayoutsLive.Notifications, :index

    live "/layout/step-a", LayoutsLive.Stepa, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", KajoolyTemplateTailwindWeb do
  #   pipe_through :api
  # end


end
