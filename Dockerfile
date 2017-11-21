FROM elixir:latest
RUN mkdir /app
RUN mkdir /app/user
WORKDIR /app/user
ADD mix.exs /app/user/mix.exs
ADD mix.lock /app/user/mix.lock
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
ADD . /app/user
