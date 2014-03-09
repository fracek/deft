module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library deft-build
  use common-dylan;
  use io;
  use system;
  use strings;

  use cli;

  use deft-core;

  use build-system;
  use projects;
  use user-projects;
  use registry-projects;
  use environment-protocols;
  use environment-reports;
  use dfmc-common;
  use dfmc-environment-projects;
  use dfmc-environment-database;
  use dfmc-back-end-implementations;

  export deft-build;
end library;

define module deft-build
  use common-dylan, exclude: { format-to-string };
  use streams;
  use format,
    import: { format };
  use format-out;
  use standard-io;
  use file-system;
  use locators;
  use strings;

  use cli;

  use deft-core;

  use build-system, import: { target-platform-name };
  use projects, import: { default-build-script };
  use registry-projects, import: { find-registries, registry-location };
  use environment-protocols,
    exclude: { application-filename, application-arguments, parameter-name };
  use environment-reports;

  export deft-open-project,
         deft-clean-project,
         deft-build-project,
         deft-clean-project;
end module;
