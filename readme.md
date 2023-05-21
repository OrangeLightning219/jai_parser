# Jai Parser

**Probably** full-featured handwritten Jai parser written in Jai. The parser has not been tested on larger projects so there may be some serious bugs and stuff. Currently, it's able to parse itself including all the Jai modules used in it.

The current plan for this parser is to provide information about Jai programs for [Jails](https://github.com/SogoCZE/Jails) and [Jai Autodoc](https://github.com/SogoCZE/jai_autodoc) together with information provided by the compiler.

## Try

The binary generated by building `build.jai` takes an entry file to parse as the first and only argument it generates an `out` folder with JSON files representing all parsed files. The JSON export has been used for quick visualization of the output while developing the parser. The parser will be mainly used Jai Module (without exporting to JSON).

### Example

```c++
demo_command_line_arguments :: () {
    args :=  get_command_line_arguments();
    defer array_reset(*args); // get_command_line_arguments() creates a new array so we release it here. The strings themselves are not copies, however!

    print("Number of command line arguments: %\n", args.count);
    for args {
         print("Argument %: %\n", it_index+1, it);
    }
}
```
Will generate:

<details>
  <summary>example.json</summary>

```json
[
  {
    "kind": "DECLARATION",
    "location": {
      "l0": 1,
      "c0": 1,
      "l1": 9,
      "c1": 1,
      "file": "./tests/example.jai"
    },
    "name": "demo_command_line_arguments",
    "const": true,
    "type_inst": null,
    "expression": {
      "kind": "PROCEDURE",
      "location": {
        "l0": 1,
        "c0": 32,
        "l1": 9,
        "c1": 1,
        "file": "./tests/example.jai"
      },
      "foreign_lib": "",
      "foreign_alias": "",
      "elsewhere": "",
      "intrinsic": "",
      "deprecated_note": "",
      "flags": "0",
      "arguments": [
        
      ],
      "returns": [
        
      ],
      "modify_block": null,
      "body": {
        "kind": "BLOCK",
        "location": {
          "l0": 1,
          "c0": 35,
          "l1": 9,
          "c1": 1,
          "file": "./tests/example.jai"
        },
        "members": [
          {
            "kind": "DECLARATION",
            "location": {
              "l0": 2,
              "c0": 4,
              "l1": 2,
              "c1": 42,
              "file": "./tests/example.jai"
            },
            "name": "args",
            "const": false,
            "type_inst": null,
            "expression": {
              "kind": "PROCEDURE_CALL",
              "location": {
                "l0": 2,
                "c0": 13,
                "l1": 2,
                "c1": 41,
                "file": "./tests/example.jai"
              },
              "inlined": false,
              "backticked": false,
              "name": "get_command_line_arguments",
              "arguments": [
                
              ]
            },
            "backticked": false,
            "notes": [
              
            ]
          },
          {
            "kind": "DEFER",
            "location": {
              "l0": 3,
              "c0": 4,
              "l1": 3,
              "c1": 28,
              "file": "./tests/example.jai"
            },
            "expression": {
              "kind": "PROCEDURE_CALL",
              "location": {
                "l0": 3,
                "c0": 10,
                "l1": 3,
                "c1": 28,
                "file": "./tests/example.jai"
              },
              "inlined": false,
              "backticked": false,
              "name": "array_reset",
              "arguments": [
                {
                  "kind": "UNARY_OPERATION",
                  "location": {
                    "l0": 3,
                    "c0": 22,
                    "l1": 3,
                    "c1": 27,
                    "file": "./tests/example.jai"
                  },
                  "operation": "POINTER",
                  "expression": {
                    "kind": "IDENTIFIER",
                    "location": {
                      "l0": 3,
                      "c0": 23,
                      "l1": 3,
                      "c1": 27,
                      "file": "./tests/example.jai"
                    },
                    "backticked": false,
                    "name": "args"
                  }
                }
              ]
            },
            "backticked": false
          },
          {
            "kind": "COMMENT",
            "location": {
              "l0": 3,
              "c0": 30,
              "l1": 4,
              "c1": 0,
              "file": "./tests/example.jai"
            },
            "value": " get_command_line_arguments() creates a new array so we release it here. The strings themselves are not copies, however!"
          },
          {
            "kind": "PROCEDURE_CALL",
            "location": {
              "l0": 5,
              "c0": 4,
              "l1": 5,
              "c1": 62,
              "file": "./tests/example.jai"
            },
            "inlined": false,
            "backticked": false,
            "name": "print",
            "arguments": [
              {
                "kind": "LITERAL",
                "location": {
                  "l0": 5,
                  "c0": 10,
                  "l1": 5,
                  "c1": 49,
                  "file": "./tests/example.jai"
                },
                "value_type": "STRING",
                "here_string_cr": false,
                "values": "Number of command line arguments: %n"
              },
              {
                "kind": "BINARY_OPERATION",
                "location": {
                  "l0": 5,
                  "c0": 51,
                  "l1": 5,
                  "c1": 61,
                  "file": "./tests/example.jai"
                },
                "left": {
                  "kind": "IDENTIFIER",
                  "location": {
                    "l0": 0,
                    "c0": 0,
                    "l1": 0,
                    "c1": 0,
                    "file": ""
                  },
                  "backticked": false,
                  "name": "args"
                },
                "operation": "DOT",
                "right": {
                  "kind": "IDENTIFIER",
                  "location": {
                    "l0": 5,
                    "c0": 56,
                    "l1": 5,
                    "c1": 61,
                    "file": "./tests/example.jai"
                  },
                  "backticked": false,
                  "name": "count"
                }
              }
            ]
          },
          {
            "kind": "FOR",
            "location": {
              "l0": 6,
              "c0": 4,
              "l1": 8,
              "c1": 5,
              "file": "./tests/example.jai"
            },
            "by_pointer": false,
            "reversed": false,
            "no_abc": false,
            "value": null,
            "index": null,
            "iterator": {
              "kind": "IDENTIFIER",
              "location": {
                "l0": 6,
                "c0": 8,
                "l1": 6,
                "c1": 12,
                "file": "./tests/example.jai"
              },
              "backticked": false,
              "name": "args"
            },
            "body": {
              "kind": "BLOCK",
              "location": {
                "l0": 6,
                "c0": 13,
                "l1": 8,
                "c1": 5,
                "file": "./tests/example.jai"
              },
              "members": [
                {
                  "kind": "PROCEDURE_CALL",
                  "location": {
                    "l0": 7,
                    "c0": 9,
                    "l1": 7,
                    "c1": 49,
                    "file": "./tests/example.jai"
                  },
                  "inlined": false,
                  "backticked": false,
                  "name": "print",
                  "arguments": [
                    {
                      "kind": "LITERAL",
                      "location": {
                        "l0": 7,
                        "c0": 15,
                        "l1": 7,
                        "c1": 32,
                        "file": "./tests/example.jai"
                      },
                      "value_type": "STRING",
                      "here_string_cr": false,
                      "values": "Argument %: %n"
                    },
                    {
                      "kind": "BINARY_OPERATION",
                      "location": {
                        "l0": 7,
                        "c0": 34,
                        "l1": 7,
                        "c1": 44,
                        "file": "./tests/example.jai"
                      },
                      "left": {
                        "kind": "IDENTIFIER",
                        "location": {
                          "l0": 0,
                          "c0": 0,
                          "l1": 0,
                          "c1": 0,
                          "file": ""
                        },
                        "backticked": false,
                        "name": "it_index"
                      },
                      "operation": "ADDITION",
                      "right": {
                        "kind": "LITERAL",
                        "location": {
                          "l0": 7,
                          "c0": 43,
                          "l1": 7,
                          "c1": 44,
                          "file": "./tests/example.jai"
                        },
                        "value_type": "INT",
                        "here_string_cr": false,
                        "values": "1"
                      }
                    },
                    {
                      "kind": "IDENTIFIER",
                      "location": {
                        "l0": 7,
                        "c0": 46,
                        "l1": 7,
                        "c1": 48,
                        "file": "./tests/example.jai"
                      },
                      "backticked": false,
                      "name": "it"
                    }
                  ]
                }
              ]
            }
          }
        ]
      },
      "notes": [
        
      ]
    },
    "backticked": false,
    "notes": [
      
    ]
  }
]
```

</details>

To generate this run:

```sh
jai build.jai && ./bin/jai_parser ./tests/example.jai
```

## Dependecies
- [Jason](https://github.com/rluba/jason)
- [Tracy](https://github.com/rluba/jai-tracy) (when profiling)

## TODO:
- Create automatic tests
- Remove unnecessary heap allocations
- Measure performance with Tracy and improve it (it's probably quite slow now)
- Refactor data structures (maybe use linked list etc)
- Rename to Jaiser? 

