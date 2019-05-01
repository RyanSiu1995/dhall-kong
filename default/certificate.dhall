λ (cert : Text) →
λ (key : Text) →
  { cert = cert
  , key = key
  , tags = ([] : Optional (List Text))
  , snis = ([] : Optional (List ../types/sni.dhall))
  } : ../types/certificate.dhall
