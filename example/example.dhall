let config : ../types/configuration.dhall = ../default/configuration.dhall
let mkCert = ../default/certificate.dhall

let myCert = [mkCert "cert" "key"]

in config
  // { certificates = Some myCert }
