let
  foamSpacePackages =
    { web3 =
      { dependencies =
        [ "aff"
        , "avar"
        , "console"
        , "coroutines"
        , "coroutine-transducers"
        , "debug"
        , "effect"
        , "errors"
        , "eth-core"
        , "foreign"
        , "foreign-generic"
        , "fork"
        , "free"
        , "heterogeneous"
        , "identity"
        , "parsing"
        , "partial"
        , "profunctor-lenses"
        , "proxy"
        , "psci-support"
        , "tagged"
        , "transformers"
        , "typelevel-prelude"
        , "variant"
        ]
      , repo = "https://github.com/f-o-a-m/purescript-web3"
      , version = "v3.0.0"
      }
    , web3-generator =
      { dependencies =
        [ "ansi"
        , "argonaut"
        , "console"
        , "effect"
        , "errors"
        , "eth-core"
        , "fixed-points"
        , "open-mkdirp-aff"
        , "node-fs-aff"
        , "ordered-collections"
        , "prelude"
        , "psci-support"
        , "record-extra"
        , "string-parsers"
        , "web3"
        , "yargs"
        ]
      , repo = "https://github.com/f-o-a-m/purescript-web3-generator"
      , version = "v3.0.0"
      }
    , chanterelle =
      { dependencies =
        [ "console"
        , "debug"
        , "effect"
        , "foreign-object"
        , "logging"
        , "open-mkdirp-aff"
        , "node-process"
        , "optparse"
        , "prelude"
        , "psci-support"
        , "solc"
        , "validation"
        , "web3"
        , "web3-generator"
        ]
      , repo = "https://github.com/f-o-a-m/chanterelle"
      , version = "v5.1.3"
      }
    , eth-core =
      { dependencies =
        [ "argonaut"
        , "bytestrings"
        , "console"
        , "debug"
        , "effect"
        , "foreign-generic"
        , "ordered-collections"
        , "parsing"
        , "prelude"
        , "psci-support"
        , "ring-modules"
        , "simple-json"
        ]
      , repo = "https://github.com/f-o-a-m/purescript-eth-core"
      , version = "v6.1.0"
      }
    , solc =
      { dependencies =
        [ "aff"
        , "argonaut"
        , "console"
        , "effect"
        , "node-path"
        , "prelude"
        , "psci-support"
        , "web3"
        ]
      , repo = "https://github.com/f-o-a-m/purescript-solc"
      , version = "v2.0.2"
      }
    , react-map-gl =
      { dependencies =
        [ "prelude", "react", "web-mercator", "simple-json", "generics-rep" ]
      , repo = "https://github.com/f-o-a-m/purescript-react-map-gl"
      , version = "master"
      }
    , deck-gl =
      { dependencies =
        [ "effect"
        , "foreign"
        , "foreign-object"
        , "prelude"
        , "psci-support"
        , "web-mercator"
        , "react-dom"
        ]
      , repo = "https://github.com/f-o-a-m/purescript-deck-gl"
      , version = "master"
      }
    , web-mercator =
      { dependencies = [ "partial", "prelude", "functions" ]
      , repo = "https://github.com/f-o-a-m/purescript-web-mercator"
      , version = "master"
      }
    , geohash =
      { dependencies = [ "eth-core", "strings" ]
      , repo = "https://github.com/f-o-a-m/purescript-geohash"
      , version = "master"
      }
    , websocket-simple =
      { dependencies =
        [ "exceptions"
        , "prelude"
        , "arraybuffer-types"
        , "nullable"
        , "web-socket"
        , "var"
        , "generics-rep"
        ]
      , repo = "https://github.com/f-o-a-m/purescript-websocket-simple"
      , version = "spago"
      }
    , servant =
      { dependencies =
        [ "aff", "prelude", "affjax", "heterogeneous", "errors", "argonaut" ]
      , repo = "https://github.com/f-o-a-m/purescript-servant"
      , version = "master"
      }
    }

  otherPackages =
    { coroutine-transducers =
      { dependencies =
        [ "aff", "coroutines", "effect", "maybe", "psci-support" ]
      , repo =
          "https://github.com/blinky3713/purescript-coroutine-transducers"
      , version = "v1.0.0"
      }
    , var =
      { dependencies = [ "effect", "contravariant", "invariant" ]
      , repo = "https://github.com/zudov/purescript-var"
      , version = "5d459b3e08bf7e7049fa9147fe4bb25fbead861a"
      }
    , halogen-renderless =
      { dependencies = [ "prelude", "control" ]
      , repo =
          "https://github.com/purescript-deprecated/purescript-halogen-renderless"
      , version = "v0.0.4"
      }
    }

in (foamSpacePackages // otherPackages)
