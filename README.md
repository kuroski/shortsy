# Shortsy

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

# Dev

Thanks to [this article](https://dev.to/hlappa/development-environment-for-elixir-phoenix-with-docker-and-docker-compose-2g17) for configuring Docker.

```sh
cp sample.env .env
docker-compose build
docker-compose run web mix ecto.create # if first time executing this application
docker-compose up
```
