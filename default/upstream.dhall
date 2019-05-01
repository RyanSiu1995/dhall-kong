λ (name : Text) →
  { name = name
  , hash_on = ([] : Optional Text)
  , hash_fallback = ([] : Optional Text)
  , hash_on_header = ([] : Optional Text)
  , hash_fallback_header = ([] : Optional Text)
  , hash_on_cookie = ([] : Optional Text)
  , hash_on_cookie_path = ([] : Optional Text)
  , slots = ([] : Optional Natural)
  , tags = ([] : Optional (List Text))
  , healthchecks = Some { active = Some ./upstream/active_healthcheck.dhall
                        , passive = Some ./upstream/passive_healthcheck.dhall
                        }
  } : ../types/upstream.dhall
