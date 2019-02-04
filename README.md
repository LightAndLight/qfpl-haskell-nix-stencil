```
Usage: qfpl-init [-n] [--package-name "Package Name"] [--version "Version"]
                 [--license "License"] [--author-name "Author Name"]
                 [--author-email "Author Email"]
                 [--generate-nix "Generate .nix files (requires cabal2nix) (does not work on Windows)"]

Available options:
  -n                       non-interactive mode (other flags only work if this
                           is enabled)
  --package-name "Package Name"
                           Package Name
  --version "Version"      Version
  --license "License"      Choices: GPL-2 GPL-3 LGPL-2.1 LGPL-3 BSD2 BSD3
                           "Data61 BSD" "CSIRO MIT / BSD hybrid" MIT ISC MPL-2.0
                           Apache-2.0 "Public Domain" "All Rights Reserved"
                           Other Default: Data61 BSD
  --author-name "Author Name"
                           Author Name
  --author-email "Author Email"
                           Author Email
  --generate-nix "Generate .nix files (requires cabal2nix) (does not work on Windows)"
                           Choices: yes no Default: yes
  -h,--help                Show this help text
```
