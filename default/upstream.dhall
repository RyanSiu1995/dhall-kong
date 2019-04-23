λ (name : Text) →
  { name = name
  , hash_on = ([] : Optional Text)
  , hash_fallback = ([] : Optional Text)
  , hash_on_header = ([] : Optional Text)
  , hash_fallback_header = ([] : Optional Text)
  , hash_on_cookie = ([] : Optional Text)
  , hash_on_cookie_path = ([] : Optional Text)
  , slot = ([] : Optional Natural)
  } : ../types/upstream.dhall
