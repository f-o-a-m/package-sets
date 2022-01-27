# Foam Space package set

overrides https://github.com/purescript/package-sets

## Usage

In `package.dhall`

```dhall
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220110/packages.dhall sha256:8dbf71bfc6c7a11043619eebe90ff85f7d884541048aa8cc48eef1ee781cbc0e

let foamSpacePackages = https://raw.githubusercontent.com/f-o-a-m/package-sets/master/packages.dhall

let overrides = {=}

let additions = {=}

in  (upstream // foamSpacePackages // overrides // additions)
```

To validate use

```sh
dhall freeze --inplace ./packages.dhall
```

# Why this approach?

This approach is used in https://github.com/srghma/my-purescript-package-sets

But here it's also possible to "override" packages from upstream

Like this https://github.com/srghma/my-purescript-package-sets/blob/00e26e6c2441de7fe27889d36435ba7ede2c39cc/packages.dhall#L160

```dhall
  ...
 , node-http =
    upstream.node-http
    with repo = "https://github.com/srghma/purescript-node-http.git"
    with version = "master"
  ...
```
