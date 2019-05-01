λ (name : Text) →
λ (upstream : Text) →
λ (port : Natural) →
  { target = name
  , upstream = "${upstream}:${Natural/show port}"
  , weight = ([] : Optional Natural)
  , tags = ([] : Optional (List Text))
  } : ../types/target.dhall
