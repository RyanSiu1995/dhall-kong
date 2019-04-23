λ (name : Text) →
  { name = name
  , retries = ([] : Optional Natural)
  , url = ([] : Optional Text)
  , host = ([] : Optional Text)
  , port = ([] : Optional Natural)
  , protocol = ([] : Optional Text)
  , connection_timeout = ([] : Optional Natural)
  , write_timeout = ([] : Optional Natural)
  , tags = ([] : Optional (List Text))
  } : ../types/service.dhall
