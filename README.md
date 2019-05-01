# Dhall - Kong

Kong API gateway starts to support a declarative configuration file in yaml format
since v1.1.x. The declarative configuration file makes the deployment on Kong more controllable
under CI/CD pipeline. This library aims at providing an interface for developers
to define a configurable configuration file for Kong.

## Development Schedule
- [ ] Basic objects defined in admin API
  - [X] Service
  - [X] Route
  - [X] Consumer
  - [ ] Plugin
  - [X] Certificate
  - [X] SNI
  - [X] Upstream
  - [X] Target
- [ ] Support for nesting objects, which is introduced from declarative configuration

## How to use

The library is developed based on the structure of [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes).
* [types](./types) folder contains the schema for Kong objects. 
* [default](./default) folder contains the function to generate the Kong object.
* [configuration.dhall](./default/configuration.dhall) is an empty Kong declarative configuration.

### Certificate and SNI
Sni and certificate in declarative configuraiton is coupled. You need to declare the list of snis before 
defining the certificate as the following.
```dhall
let config = ./default/configuration.dhall
let mkSni = ./default/sni.dhall
let mkCert = ./default/certificate.dhall

let mySni: ./types/sni.dhall = mkSni "my.example.com"
let myCert: ./types/certificate.dhall = mkCert "myCert" "myKey" // { sni = Some [mySni] }

in config // { certificates = Some [myCert] }
```

For more example, please check the [example.dhall](./example/example.dhall) file.

## Contribution

The project is now under development. Welcome to open an issue and submit pull request
on improving the library.
