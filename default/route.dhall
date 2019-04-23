λ (service : Text) →
  { service = service
  , name = ([] : Optional Text)
  , protocol = ([] : Optional (List Text))
  , methods = ([] : Optional (List Text))
  , hosts = ([] : Optional (List Text))
  , paths = ([] : Optional (List Text))
  , regex_priority = ([] : Optional Natural)
  , strip_path = ([] : Optional Bool)
  , preserve_host = ([] : Optional Bool)
  , snis = ([] : Optional (List Text))
  , sources = ([] : Optional (List Text))
  , destination = ([] : Optional (List Text))
  , tags = ([] : Optional (List Text))
  } : ../types/route.dhall
