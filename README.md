# serverkit-login_items
[Serverkit](https://github.com/r7kamura/serverkit) plug-in for login items of Mac OS X.

- [Install](#install)
- [Resource](#resource)
  - [Attributes](#attributes)
  - [Example](#example)

## Install
```rb
gem "serverkit-login_items"
```

## Resource

#### Attributes
- path - path to login item(required)
- hidden - hidden or not(default: `false`)

#### Example
```yml
resources:
  - id: alfred_2
    type: login_items
    path: '/Applications/Alfred 2.app'
    hidden: true
```
