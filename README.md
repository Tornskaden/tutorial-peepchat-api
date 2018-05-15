# Peepchat

This is the API part of the Peepchat app from Mike North's [Tutorial on Medium](https://medium.com/peep-stack/building-a-performant-web-app-with-ember-fastboot-and-phoenix-part-1-fa1241654308)

## Notes

The current Phoenix (v1.3.2) has som changes since the tutorial was written.

Generally stuff in `web/...` now recides in `lib/peepchat_wep/...`

References to `mix phoenix.server` instead goes through `mix phx.server`

### Section: A new mime type

`config :plug, :mimes, %{...}` is no longer supported

Instead write: `config :mime, :types, %{...}`


### Section: CORS

`lib/peepchat/endpoint.ex` => `lib/peepchat_wep/endpoint.ex`

Insert `plug CORSPlug` just before `plug PeepchatWeb.Router`

### Section: Adding your first API endpoint

`Peepchat.SessionController` => `PeepchatWeb.SessionController`

`Peepchat.Web` => `PeepchatWeb`

`resources "session"...` => `resources "/session"...`

`Peepchat.Endpoint` => `PeepchatWeb.Endpoint`
