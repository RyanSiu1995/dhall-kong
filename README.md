# Dhall - Kong

Kong API gateway starts to support a declarative configuration file in yaml format
since v1.1.x. The declarative configuration file makes the deployment on Kong more controllable
under CI/CD pipeline. This library aims at providing an interface for developers
to define a configurable configuration file for Kong.

## Development Schedule
- [ ] Basic objects defined in admin API
  - [ ] Service
  - [ ] Route
  - [ ] Consumer
  - [ ] Plugin
  - [ ] Certificate
  - [ ] SNI
  - [ ] Upstream
  - [ ] Target
- [ ] Support for nesting objects, which is introduced from declarative configuration

## How to use

The library is developed based on the structure of [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes).
* [types](./types) folder contains the schema for Kong objects. 
* [default](./default) folder contains the function to generate the Kong object.
* [configuration.dhall](./default/configuration.dhall) is an empty Kong declarative configuration.

## Contribution

The project is now under development. Welcome to open an issue and submit pull request
on improving the library.