# PhoenixLiveView WorkShop

Creating a LiveView counter

Requirements:
  - Phoenix Framework
  - Nodejs


# Steps

## 1. Create a new project

```
   mix phx.new counter --no-ecto
```

## 2. Add Phoenix.LiveView to dependencies
mix.exs
```
   {:phoenix_live_view, "~> 0.1"},
```

## 3. Generate and add Salt to configs
```
mix phx.gen.secret 32
```

gWm3WQNlRCQXVWZo2y6kDApOqYfDmZgk

config/config.exs

```
live_view: [
  signing_salt: "gWm3WQNlRCQXVWZo2y6kDApOqYfDmZgk"
]
```

## 4. Add plug to grab liveview flash messages
lib/counter_web/router.ex

```
pipeline :browser do
  ...
  plug :fetch_flash
  plug Phoenix.LiveView.Flash
end
```

## 5. Add imports to enable LiveView funcitons    

lib/counter_web.ex

Controller: 
```
   import Phoenix.LiveView.Controller, only: [live_render: 3]
```

View 
```
   import Phoenix.LiveView, only: [live_render: 2, live_render: 3, live_link: 1, live_link: 2]
```

Router
```
  import Phoenix.LiveView.Router
```

## 6. Expose WebSocket

lib/counter_web/endpoint.ex

```
  socket "/live", Phoenix.LiveView.Socket
```

## 7. Add npm dependencies

assets/package.json

```
   "phoenix_live_view": "file:../deps/phoenix_live_view"
```

Install dependencies

```
   npm install --prefix assets
```

## 8. Enable connecting live view from the client

assets/js/app.js

```
   import LiveSocket from "phoenix_live_view"

   let liveSocket = new LiveSocket("/live")
   liveSocket.connect()
```

## 9. Enable live reload 

config/dev.exs

```
   config :demo, MyAppWeb.Endpoint,
     live_reload: [
       patterns: [
         ...,
         ~r{lib/my_app_web/live/.*(ex)$}
       ]
     ]
```

## 10. Import CSS

assets/css/app.css

```
   @import "../../deps/phoenix_live_view/assets/css/live_view.css";
```

## 11. Use it
  Create a template

counter_web/templates/page/index.html.eex
```
  <%= live_render(@conn, CounterWeb.CounterLive) %>
```

## 12. Create a counter live file

lib/counter_web/live/counter_live.ex


```
defmodule CounterWeb.CounterLive do
  use Phoenix.LiveView

  def mount(_params, socket) do
    socket = assign(socket, :counter, 0)
    {:ok, socket}
  end
end
```
 
## 13. Add render function

lib/counter_web/live/counter_live.ex

```
   def render(assigns) do
    ~L"""
      Hello World
    """
   end
```

## 14. Render variables 

```
   def render(assigns) do
    ~L"""
      <%= @counter %> 
    """
   end
```


## 15. Add buttons 

lib/counter_web/live/counter_live.ex

```
   def render(assigns) do
    ~L"""
      <%= @counter %> 
      <button phx-click="add">+</button>
    """
   end
```

## 16. Define handle_event function

lib/counter_web/live/counter_live.ex

```
    def handle_event("add", _params, socket) do
      {:noreply, update(socket, :counter, fn(counter) -> counter + 1 end)}
    end
```
