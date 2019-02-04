{ mkDerivation, aeson-pretty, base, bytestring, containers
, directory, fetchgit, free, mtl, optparse-applicative, parsers
, process, stdenv, template-haskell, text, th-lift-instances
, trifecta, yaml
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "1m0c2p4j8kbsh2afcmc8hjdwi4ccpivv5gphb73fhjhgisd8n01f";
    rev = "3ff9765fac01dd91675b1c4ed39eec9566c40fd7";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    aeson-pretty base bytestring containers directory free mtl
    optparse-applicative parsers process template-haskell text
    th-lift-instances trifecta yaml
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
