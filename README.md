# NPM Plugin for PDC

NPM installer plugin for [Personal Distro Configurator](https://github.com/personal-distro-configurator/personal-distro-configurator/).

## Getting Started

Add on your `pdc.yml` file:

```
plugins:
  get:
    - personal-distro-configurator/pdc-npm-plugin
```

Then add all npm dependencies you want to install on your `pdc.yml` file:

```
npm:
  install:
    -
```

To execute this installer, add on your execute list:

```
execute:
  - plugin npm
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
