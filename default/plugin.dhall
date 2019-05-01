λ (name : Text) →
λ (run_on : Text) →
λ (protocols : List Text) →
  { name = name
  , route = ([] : Optional Text)
  , service = ([] : Optional Text)
  , consumer = ([] : Optional Text)
  , config = ([] : Optional (List { mapKey : Text, mapValue : Text}))
  , run_on = run_on
  , protocols = protocols
  , enabled = ([] : Optional Bool)
  , tags = ([] : Optional (List Text))
  } : ../types/plugin.dhall

