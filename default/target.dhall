λ (target : Text, upstream : Text) →
  { target = target
  , upstream = upstream
  , weight = ([] : Optional Natural)
  , tags = ([] : Optional (List Text))
  } : ../types/target.dhall
