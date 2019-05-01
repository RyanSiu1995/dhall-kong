let config : ../types/configuration.dhall = ../default/configuration.dhall

{- Create a Kong service -}
let mkService = ../default/service.dhall

let myService = [
  mkService
  // { name = Some "my-service-object"
     , url = Some "http://upstream-server:8080/api"
     }
]

{- Create a SNI with certificate -}
let mkCert = ../default/certificate.dhall
let mkSni = ../default/sni.dhall

let myDomain = "www.example.com"

let myCert = [
  mkCert "cert" "key"
    // { snis = Some [mkSni myDomain] }
]

{- Combine all Kong objects into one single file -}

in config
  // { certificates = Some myCert
     , services = Some myService }
