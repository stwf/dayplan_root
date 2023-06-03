defmodule DayplanExWeb.IndexLive do
  use Phoenix.LiveView
  use LiveViewNative.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, cats: [])}
  end

  def render(%{platform_id: :web} = assigns) do
    ~H"bla from web"
  end

  def render(%{platform_id: :swiftui} = assigns) do
    ~Z"""
    <List>
      <Text id="123">Steven</Text>
      <Text id="456">Francine</Text>
      <Text id="789">Lucky</Text>
    </List>
    """swiftui
  end
end
