defmodule Kblog.PageController do
  use Kblog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
