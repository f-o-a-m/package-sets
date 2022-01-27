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

