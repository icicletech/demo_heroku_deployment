defmodule DemoHerokuDeploymentWeb.PageController do
  use DemoHerokuDeploymentWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
