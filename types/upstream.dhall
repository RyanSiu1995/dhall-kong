{ name : (Text)
, hash_on : (Optional Text)
, hash_fallback : (Optional Text)
, hash_on_header : (Optional Text)
, hash_fallback_header : (Optional Text)
, hash_on_cookie : (Optional Text)
, hash_on_cookie_path : (Optional Text)
, slots : (Optional Natural)
, tags : (Optional (List Text))
, healthchecks : Optional { active : Optional ./upstream/active_healthcheck.dhall
                          , passive : Optional ./upstream/passive_healthcheck.dhall
                          }
}
