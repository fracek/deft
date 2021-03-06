Module: deft-new

define constant $main-executable-template-simple :: <string>
  = ("Module: %s\n"
     "Synopsis: \n"
     "Author: \n"
     "Copyright: See LICENSE file in this distribution.\n"
     "\n"
     "define function main (name :: <string>, arguments :: <vector>)\n"
     "  format-out(\"Hello, world!\\n\");\n"
     "  exit-application(0);\n"
     "end function main;\n"
     "\n"
     "main(application-name(), application-arguments());\n");

define constant $main-dll-template-simple :: <string>
  = ("Module: %s\n"
     "Synopsis: \n"
     "Author: \n"
     "Copyright: See LICENSE file in this distribution.\n"
     "\n"
     "\n");

define constant $library-template-simple :: <string>
  = ("Module: dylan-user\n"
     "\n"
     "define library %s\n"
     "  use common-dylan;\n"
     "  use io;\n"
     "\n"
     "  export %s;\n"
     "end library %s;\n"
     "\n"
     "define module %s\n"
     "  use common-dylan, exclude: { format-to-string };\n"
     "  use format-out;\n"
     "end module %s;\n");

define constant $lid-template-simple :: <string>
  = ("Library: %s\n"
     "Target-Type: %s\n"
     "Files: %s\n"
     "       %s\n");

define constant $mit-license-template :: <string>
  = ("Copyright (c) 2014 XXXXXXX, YYYYYY.\n"
     "\n"
     "Permission is hereby granted, free of charge, to any person obtaining a\n"
     "copy of this software and associated documentation files (the \"Software\"),\n"
     "to deal in the Software without restriction, including without limitation\n"
     "the rights to use, copy, modify, merge, publish, distribute, sublicense,\n"
     "and/or sell copies of the Software, and to permit persons to whom the\n"
     "Software is furnished to do so, subject to the following conditions:\n"
     "\n"
     "The above copyright notice and this permission notice shall be included\n"
     "in all copies or substantial portions of the Software.\n"
     "\n"
     "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS\n"
     "OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n"
     "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n"
     "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n"
     "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING\n"
     "FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS\n"
     "IN THE SOFTWARE.\n");

define constant $gitignore-template :: <string>
 = ("_build\n"
    "*.hdp\n"
    "deft-package-local.json\n");

define constant $deft-package-json-template :: <string>
 = ("{\n"
    "  \"name\": \"%s\",\n"
    "  \"description\": \"\",\n"
    "  \"keywords\": [\n"
    "  ],\n"
    "  \"license\": \"MIT\",\n"
    "  \"default-target\": \"%s\",\n"
    "  \"tests\": [\n"
    "%s"
    "  ]\n"
    "}\n");

define constant $test-suite-app-library-template :: <string>
 = ("module: dylan-user\n"
    "\n"
    "define library %s-test-suite-app\n"
    "  use testworks;\n"
    "  use %s-test-suite;\n"
    "end library;\n"
    "\n"
    "define module %s-test-suite-app\n"
    "  use testworks;\n"
    "  use %s-test-suite;\n"
    "end module;\n");

define constant $test-suite-app-template :: <string>
 = ("module: %s-test-suite-app\n"
    "\n"
    "define suite all-%s-test-suites ()\n"
    "  suite %s-test-suite;\n"
    "end;\n"
    "\n"
    "run-test-application(all-%s-test-suites);\n");

define constant $test-suite-app-lid-template :: <string>
 = ("library: %s-test-suite-app\n"
    "executable: %s-test-suite-app\n"
    "files: %s-test-suite-app-library\n"
    "       %s-test-suite-app\n");

define constant $test-suite-library-template :: <string>
 = ("module: dylan-user\n"
    "\n"
    "define library %s-test-suite\n"
    "  use common-dylan;\n"
    "  use %s;\n"
    "  use testworks;\n"
    "  use system;\n"
    "\n"
    "  export %s-test-suite;\n"
    "end library;\n"
    "\n"
    "define module %s-test-suite\n"
    "  use common-dylan;\n"
    "  use %s;\n"
    "  use testworks;\n"
    "\n"
    "  export %s-test-suite;\n"
    "end module;\n");

define constant $test-suite-template :: <string>
 = ("module: %s-test-suite\n"
    "synopsis: Test suite for the %s library.\n"
    "\n"
    "define test example-test ()\n"
    "  assert-true(#t);\n"
    "end test example-test;\n"
    "\n"
    "define suite %s-test-suite ()\n"
    "  test example-test;\n"
    "end suite;\n");

define constant $test-suite-lid-template :: <string>
 = ("library: %s-test-suite\n"
    "files: %s-test-suite-library\n"
    "       %s-test-suite\n");
