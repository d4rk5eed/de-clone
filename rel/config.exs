use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :dev

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :".feRGWj6`pXs:ys,QRuS~x2_@w`spja1]}@Y699w~Z[h[PjlUYY[fSZb?B.V95BK"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"@;Hf<N_K1o41KyC)uDHf]b0LUe`zvIe1`G,&o}kW~W;I.=}~Ls:^U%m28T]8bad8"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :de_clone do
  set version: current_version(:de_clone)
end

