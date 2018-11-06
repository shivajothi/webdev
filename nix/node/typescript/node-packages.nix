# This file has been generated by node2nix 1.6.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "typescript-3.1.5" = {
      name = "typescript";
      packageName = "typescript";
      version = "3.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-3.1.5.tgz";
        sha512 = "muYNWV9j5+3mXoKD6oPONKuGUmYiFX14gfo9lWm9ZXRHOqVDQiB4q1CzFPbF4QLV2E9TZXH6oK55oQ94rn3PpA==";
      };
    };
  };
  args = {
    name = "typescript-demos";
    packageName = "typescript-demos";
    version = "1.0.0";
    src = ./.;
    dependencies = [
      sources."typescript-3.1.5"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "Exercises and Demos for TypeScript";
      license = "BSD-2-Clause";
    };
    production = true;
    bypassCache = true;
  };
in
{
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}