let config : ../types/configuration.dhall = ../default/configuration.dhall

let myDomain = "www.example.com"

{- Create a Kong service with route -}
let mkService = ../default/service.dhall
let mkRoute = ../default/route.dhall

let serviceName = "my-service-object"
let upstreamName = "upstream-server"

let myService = [
  mkService
  // { name = Some serviceName
     , url = Some "http://${upstreamName}:8080/api"
     }
]

let myRoute = [
  mkRoute serviceName {- link the route to the service -}
  // { name = Some "my-route"
     , protocols = Some ["https"]
     , hosts = Some [myDomain]
     , paths = Some ["/api/v1"]
     }
]

{- Create upstream with target -}
let mkUpstream = ../default/upstream.dhall
let mkTarget = ../default/target.dhall

let myUpstream = [mkUpstream upstreamName]
let myTarget = [mkTarget "my-target" upstreamName 8080]

{- Create a SNI with certificate -}
let mkCert = ../default/certificate.dhall
let mkSni = ../default/sni.dhall

let myCert = [
  mkCert "cert" "key"
    // { snis = Some [mkSni myDomain] }
]

{- Create comsumer object -}
let mkConsumer = ../default/consumer.dhall

let myConsumer = [mkConsumer // { custom_id = "my-comsumer" }]

{- Combine all Kong objects into one single file -}

in config
  // { certificates = Some myCert
     , services = Some myService
     , routes = Some myRoute
     , upstreams = Some myUpstream
     , targets = Some myTarget
     , consumers = Some myConsumer
     }
