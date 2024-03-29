
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Get subroutine arguments %args from hash (%args) :)",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Sub-Spec-GetArgs-Hash",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "Sub::Spec::GetArgs::Hash",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Sub::Spec" => "0.14",
    "perl" => "5.010000"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
