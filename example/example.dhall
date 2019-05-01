let config : ../types/configuration.dhall = ../default/configuration.dhall

{- How to make a SNI with certificate -}

let mkCert = ../default/certificate.dhall
let mkSni = ../default/sni.dhall

let myDomain = "www.example.com"

let myCert = [
  mkCert "cert" "key"
    // { snis = Some [mkSni myDomain] }
]

{- Combine all Kong objects into one single file -}

in config
  // { certificates = Some myCert }
