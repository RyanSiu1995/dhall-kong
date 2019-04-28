λ (cert : Text) →
λ (key : Text) →
  { cert = cert
  , key = key
  , tags = ([] : Optional (List Text))
  , snis = ([] : Optional ../types/sni.dhall)
  } : ../types/certificate.dhall
