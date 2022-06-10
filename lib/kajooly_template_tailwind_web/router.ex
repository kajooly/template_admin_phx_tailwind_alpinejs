defmodule KajoolyTemplateTailwindWeb.Router do
  use KajoolyTemplateTailwindWeb, :router

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

  scope "/", KajoolyTemplateTailwindWeb do
    pipe_through :browser

    get "/", PageController, :index


    live "/layout/list", LayoutsLive.Index, :index
    live "/layout/resumen", LayoutsLive.Index, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", KajoolyTemplateTailwindWeb do
  #   pipe_through :api
  # end


end
