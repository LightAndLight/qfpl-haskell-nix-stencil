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
    sha256 = "06y9aj3lljv57298j9bkcm8f85xawj8vy3svks5ys40i480jvj2k";
    rev = "c393db84c2b3a41ae801e9041d3aefc21bbcbeb6";
  };
  libraryHaskellDepends = [
    aeson-pretty base bytestring containers directory free mtl
    optparse-applicative parsers process template-haskell text
    th-lift-instances trifecta yaml
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
