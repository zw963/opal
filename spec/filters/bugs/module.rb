# NOTE: run bin/format-filters after changing this file
opal_filter "Module" do
  fails "Module#alias_method creates methods that are == to each other" # Expected #<Method: #<Class:0x9122>#uno (defined in #<Class:0x9122> in ruby/core/module/fixtures/classes.rb:206)> == #<Method: #<Class:0x9122>#public_one (defined in ModuleSpecs::Aliasing in ruby/core/module/fixtures/classes.rb:206)> to be truthy but was false
  fails "Module#alias_method creates methods that are == to eachother" # Expected #<Method: #<Class:0x3ee54>#uno (defined in #<Class:0x3ee54> in ruby/core/module/fixtures/classes.rb:203)> to equal #<Method: #<Class:0x3ee54>#public_one (defined in ModuleSpecs::Aliasing in ruby/core/module/fixtures/classes.rb:203)>
  fails "Module#alias_method handles aliasing a method only present in a refinement" # NoMethodError: undefined method `refine' for #<Module:0x90fa>
  fails "Module#alias_method retains method visibility"
  fails "Module#alias_method returned value returns symbol of the defined method name" # Expected #<Class:0x1c94a> to be identical to "checking_return_value"
  fails "Module#append_features on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#attr applies current visibility to methods created"
  fails "Module#attr converts non string/symbol names to strings using to_str" # Expected false == true to be truthy but was false
  fails "Module#attr converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr returns an array of defined method names as symbols" # Expected nil == ["foo", "bar"] to be truthy but was false
  fails "Module#attr_accessor applies current visibility to methods created"
  fails "Module#attr_accessor converts non string/symbol names to strings using to_str" # Expected false == true to be truthy but was false
  fails "Module#attr_accessor converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr_accessor not allows creating an attr_accessor on an immediate class"
  fails "Module#attr_accessor on immediates can read through the accessor" # NoMethodError: undefined method `foobar' for 1
  fails "Module#attr_accessor raises FrozenError if the receiver if frozen" # Expected FrozenError but no exception was raised (42 was returned)
  fails "Module#attr_accessor raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr_accessor returns an array of defined method names as symbols" # Expected nil == ["foo", "foo=", "bar", "bar="] to be truthy but was false
  fails "Module#attr_reader applies current visibility to methods created"
  fails "Module#attr_reader converts non string/symbol names to strings using to_str" # Expected false == true to be truthy but was false
  fails "Module#attr_reader converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr_reader not allows for adding an attr_reader to an immediate"
  fails "Module#attr_reader raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr_reader returns an array of defined method names as symbols" # Expected nil == ["foo", "bar"] to be truthy but was false
  fails "Module#attr_writer applies current visibility to methods created"
  fails "Module#attr_writer converts non string/symbol names to strings using to_str" # Expected false == true to be truthy but was false
  fails "Module#attr_writer converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr_writer not allows for adding an attr_writer to an immediate"
  fails "Module#attr_writer raises FrozenError if the receiver if frozen" # Expected FrozenError but no exception was raised (42 was returned)
  fails "Module#attr_writer raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr_writer returns an array of defined method names as symbols" # Expected nil == ["foo=", "bar="] to be truthy but was false
  fails "Module#autoload (concurrently) blocks a second thread while a first is doing the autoload"
  fails "Module#autoload (concurrently) blocks others threads while doing an autoload"
  fails "Module#autoload allows multiple autoload constants for a single file"
  fails "Module#autoload calls #to_path on non-String filename arguments"
  fails "Module#autoload calls #to_path on non-string filenames"
  fails "Module#autoload does NOT raise a NameError when the autoload file did not define the constant and a module is opened with the same name"
  fails "Module#autoload does not load the file if the file is manually required"
  fails "Module#autoload does not load the file when accessing the constants table of the module"
  fails "Module#autoload does not load the file when referring to the constant in defined?"
  fails "Module#autoload does not remove the constant from the constant table if load fails"
  fails "Module#autoload does not remove the constant from the constant table if the loaded files does not define it"
  fails "Module#autoload ignores the autoload request if the file is already loaded"
  fails "Module#autoload loads a file with .rb extension when passed the name without the extension"
  fails "Module#autoload loads the file that defines subclass XX::YY < YY and YY is a top level constant"
  fails "Module#autoload loads the file when opening a module that is the autoloaded constant"
  fails "Module#autoload loads the registered constant into a dynamically created class"
  fails "Module#autoload loads the registered constant into a dynamically created module"
  fails "Module#autoload loads the registered constant when it is accessed"
  fails "Module#autoload loads the registered constant when it is included"
  fails "Module#autoload loads the registered constant when it is inherited from"
  fails "Module#autoload loads the registered constant when it is opened as a class"
  fails "Module#autoload loads the registered constant when it is opened as a module"
  fails "Module#autoload looks up the constant in the scope where it is referred"
  fails "Module#autoload looks up the constant when in a meta class scope"
  fails "Module#autoload raises a NameError when the constant name has a space in it"
  fails "Module#autoload raises a NameError when the constant name starts with a lower case letter"
  fails "Module#autoload raises a NameError when the constant name starts with a number"
  fails "Module#autoload raises a TypeError if not passed a String or object respodning to #to_path for the filename"
  fails "Module#autoload raises a TypeError if opening a class with a different superclass than the class defined in the autoload file"
  fails "Module#autoload raises an ArgumentError when an empty filename is given"
  fails "Module#autoload registers a file to load the first time the named constant is accessed"
  fails "Module#autoload retains the autoload even if the request to require fails"
  fails "Module#autoload returns 'constant' on referring the constant with defined?()"
  fails "Module#autoload runs for an exception condition class and doesn't trample the exception"
  fails "Module#autoload sets the autoload constant in the constants table"
  fails "Module#autoload shares the autoload request across dup'ed copies of modules"
  fails "Module#autoload when changing $LOAD_PATH does not reload a file due to a different load path"
  fails "Module#autoload? returns nil if no file has been registered for a constant"
  fails "Module#autoload? returns the name of the file that will be autoloaded"
  fails "Module#class_eval activates refinements from the eval scope" # NoMethodError: undefined method `foo' for #<ModuleSpecs::NamedClass:0x4a168>
  fails "Module#class_eval converts a non-string filename to a string using to_str"
  fails "Module#class_eval converts non string eval-string to string using to_str"
  fails "Module#class_eval raises a TypeError when the given eval-string can't be converted to string using to_str"
  fails "Module#class_eval raises a TypeError when the given filename can't be converted to string using to_str"
  fails "Module#class_eval resolves constants in the caller scope ignoring send"
  fails "Module#class_eval resolves constants in the caller scope" # fails because of the difference between module_eval("Const") and module_eval { Const } (only the second one is supported by Opal)
  fails "Module#class_eval uses the optional filename and lineno parameters for error messages"
  fails "Module#const_defined? coerces the inherit flag to a boolean" # Expected true to be false
  fails "Module#const_defined? returns true for toplevel constant when the name begins with '::'"
  fails "Module#const_defined? returns true or false for the nested name"
  fails "Module#const_defined? returns true when passed a scoped constant name for a constant in the inheritance hierarchy and the inherited flag is default"
  fails "Module#const_defined? returns true when passed a scoped constant name for a constant in the inheritance hierarchy and the inherited flag is true"
  fails "Module#const_defined? returns true when passed a scoped constant name"
  fails "Module#const_get coerces the inherit flag to a boolean" # Expected NameError but no exception was raised ("const1" was returned)
  fails "Module#const_get does autoload a constant with a toplevel scope qualifier" # NameError: uninitialized constant CSAutoloadB
  fails "Module#const_get does autoload a constant" # NameError: uninitialized constant CSAutoloadA
  fails "Module#const_get does autoload a module and resolve a constant within" # NameError: uninitialized constant CSAutoloadC
  fails "Module#const_get does autoload a non-toplevel module" # LoadError: cannot load such file -- ruby/core/module/fixtures/constants_autoload_d
  fails "Module#const_set sets the name of a module scoped by an anonymous module" # NoMethodError: undefined method `end_with?' for nil
  fails "Module#const_set when overwriting an existing constant does not warn if the previous value was undefined" # Expected #<Module:0x48fd0> to have constant 'Foo' but it does not
  fails "Module#const_set when overwriting an existing constant warns if the previous value was a normal value" # Expected warning to match: /already initialized constant/ but got: ""
  fails "Module#const_source_location accepts a String or Symbol name" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location accepts a scoped constant name" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location accepts a toplevel scope qualifier" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location autoload returns the autoload location while not resolved" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location autoload returns where the constant was resolved when resolved" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location calls #to_str to convert the given name to a String" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location does not search the containing scope" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location does not search the singleton class of a Class or Module" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location does search private constants path" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if a Symbol has a toplevel scope qualifier" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if a Symbol is a scoped constant name" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if only '::' is passed" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if the name contains non-alphabetic characters except '_'" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if the name does not start with a capital letter" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if the name includes two successive scope separators" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a NameError if the name starts with a non-alphabetic character" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location raises a TypeError if conversion to a String by calling #to_str fails" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location return empty path if constant defined in C code" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location returns nil if no constant is defined in the search path" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location returns nil if the constant is defined in the receiver's superclass and the inherit flag is false" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location returns nil when the receiver is a Class, the constant is defined at toplevel and the inherit flag is false" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location returns nil when the receiver is a Module, the constant is defined at toplevel and the inherit flag is false" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location searches into the receiver superclasses if the inherit flag is true" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants returns path to a toplevel constant when the receiver is a Class" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants returns path to a toplevel constant when the receiver is a Module" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants returns path to the updated value of a constant" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants searches a path in a module included in the immediate class before the superclass" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants searches a path in a module included in the superclass" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants searches a path in the immediate class or module first" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants searches a path in the superclass before a module included in the superclass" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with dynamically assigned constants searches a path in the superclass chain" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants returns location path a toplevel constant when the receiver is a Class" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants returns location path a toplevel constant when the receiver is a Module" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants searches location path a module included in the immediate class before the superclass" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants searches location path a module included in the superclass" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants searches location path the immediate class or module first" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants searches location path the superclass before a module included in the superclass" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#const_source_location with statically assigned constants searches location path the superclass chain" # NoMethodError: undefined method `__dir__' for #<MSpecEnv:0x6efae>
  fails "Module#constants doesn't returns inherited constants when passed nil"
  fails "Module#constants returns only public constants"
  fails "Module#define_method passed { |a,|  } creates a method that does not destructure the passed argument" # Expected [1, 2] == 1 to be truthy but was false
  fails "Module#define_method raises a TypeError when a Method from a singleton class is defined on another class"
  fails "Module#define_method raises a TypeError when a Method from one class is defined on an unrelated class"
  fails "Module#define_method raises a TypeError when an UnboundMethod from a child class is defined on a parent class"
  fails "Module#define_method raises a TypeError when an UnboundMethod from a singleton class is defined on another class" # Expected TypeError (/can't bind singleton method to a different class/) but no exception was raised (#<Class:0x47ae6> was returned)
  fails "Module#define_method raises a TypeError when an UnboundMethod from one class is defined on an unrelated class"
  fails "Module#deprecate_constant accepts multiple symbols and strings as constant names"
  fails "Module#deprecate_constant raises a NameError when given an undefined name"
  fails "Module#deprecate_constant returns self"
  fails "Module#deprecate_constant when accessing the deprecated module passes the accessing"
  fails "Module#deprecate_constant when accessing the deprecated module warns with a message"
  fails "Module#extend_object extends the given object with its constants and methods by default"
  fails "Module#extend_object on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#include doesn't accept no-arguments" # Expected ArgumentError but no exception was raised (#<Module:0x4fbac> was returned)
  fails "Module#initialize_copy should produce a duped module with inspectable class methods" # NameError: undefined method `hello' for class `Module'
  fails "Module#initialize_copy should retain singleton methods when duped" # Expected [] to equal ["hello"]
  fails "Module#instance_method raises a NameError if the method has been undefined"
  fails "Module#instance_method raises a TypeError if not passed a symbol"
  fails "Module#instance_method raises a TypeError if the given name is not a string/symbol"
  fails "Module#method_added is called with a precise caller location with the line of the 'def'" # NoMethodError: undefined method `caller_locations' for #<Module:0xaa8>
  fails "Module#method_defined? converts the given name to a string using to_str"
  fails "Module#method_defined? raises a TypeError when the given object is not a string/symbol" # Expected TypeError but no exception was raised (false was returned)
  fails "Module#method_defined? raises a TypeError when the given object is not a string/symbol/fixnum"
  fails "Module#method_defined? returns true if a public or private method with the given name is defined in self, self's ancestors or one of self's included modules"
  fails "Module#method_defined? when passed false as a second optional argument checks only the class itself" # ArgumentError: [Child.method_defined?] wrong number of arguments(2 for 1)
  fails "Module#method_defined? when passed true as a second optional argument performs a lookup in ancestors" # ArgumentError: [Child.method_defined?] wrong number of arguments(2 for 1)
  fails "Module#module_eval activates refinements from the eval scope" # NoMethodError: undefined method `foo' for #<ModuleSpecs::NamedClass:0x81f82>
  fails "Module#module_eval converts a non-string filename to a string using to_str"
  fails "Module#module_eval converts non string eval-string to string using to_str"
  fails "Module#module_eval raises a TypeError when the given eval-string can't be converted to string using to_str"
  fails "Module#module_eval raises a TypeError when the given filename can't be converted to string using to_str"
  fails "Module#module_eval resolves constants in the caller scope ignoring send"
  fails "Module#module_eval resolves constants in the caller scope"
  fails "Module#module_eval uses the optional filename and lineno parameters for error messages"
  fails "Module#module_function as a toggle (no arguments) in a Module body does not affect module_evaled method definitions also if outside the eval itself"
  fails "Module#module_function as a toggle (no arguments) in a Module body doesn't affect definitions when inside an eval even if the definitions are outside of it"
  fails "Module#module_function as a toggle (no arguments) in a Module body has no effect if inside a module_eval if the definitions are outside of it"
  fails "Module#module_function on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#module_function with specific method names raises a TypeError when the given names can't be converted to string using to_str"
  fails "Module#module_function with specific method names tries to convert the given names to strings using to_str"
  fails "Module#name changes when the module is reachable through a constant path" # Expected nil to match /^#<Module:0x\h+>::N$/
  fails "Module#name is not nil for a nested module created with the module keyword"
  fails "Module#name is not nil when assigned to a constant in an anonymous module" # NoMethodError: undefined method `end_with?' for nil
  fails "Module#name is set after it is removed from a constant under an anonymous module" # Expected nil to match /^#<Module:0x\h+>::Child$/
  fails "Module#name preserves the encoding in which the class was defined"
  fails "Module#prepend keeps the module in the chain when dupping an intermediate module"
  fails "Module#prepend keeps the module in the chain when dupping the class"
  fails "Module#prepend uses only new module when dupping the module" # Expected [#<Module:0x6c37a>] == [#<Module:0x6c38c>, #<Module:0x6c37a>] to be truthy but was false
  fails "Module#private with argument array as a single argument sets visibility of given method names" # Expected #<Module:0x7b0e0> to have private instance method 'test1' but it does not
  fails "Module#private with argument one or more arguments sets visibility of given method names" # Expected #<Module:0x2f186> to have private instance method 'test1' but it does not
  fails "Module#private_constant marked constants in a module raises a NameError when accessed directly from modules that include the module" # Expected NameError but no exception was raised (true was returned)
  fails "Module#private_constant marked constants sends #const_missing to the original class or module" # Expected true == "Foo" to be truthy but was false
  fails "Module#private_method_defined? raises a TypeError if passed an Integer" # Expected TypeError but no exception was raised (false was returned)
  fails "Module#private_method_defined? when passed false as a second optional argument checks only the class itself" # ArgumentError: [Child.private_method_defined?] wrong number of arguments(2 for 1)
  fails "Module#private_method_defined? when passed true as a second optional argument performs a lookup in ancestors" # ArgumentError: [Child.private_method_defined?] wrong number of arguments(2 for 1)
  fails "Module#protected with argument array as a single argument sets visibility of given method names" # NoMethodError: undefined method `protected_instance_methods' for #<Module:0x6994a>
  fails "Module#protected with argument does not clone method from the ancestor when setting to the same visibility in a child" # NoMethodError: undefined method `protected_instance_methods' for #<Module:0xa2d8>
  fails "Module#protected with argument one or more arguments sets visibility of given method names" # NoMethodError: undefined method `protected_instance_methods' for #<Module:0x33d4a>
  fails "Module#protected_method_defined? raises a TypeError if passed an Integer" # Expected TypeError but no exception was raised (false was returned)
  fails "Module#protected_method_defined? when passed false as a second optional argument checks only the class itself" # ArgumentError: [Child.private_method_defined?] wrong number of arguments(2 for 1)
  fails "Module#protected_method_defined? when passed true as a second optional argument performs a lookup in ancestors" # ArgumentError: [Child.private_method_defined?] wrong number of arguments(2 for 1)
  fails "Module#public_method_defined? raises a TypeError if passed an Integer" # Expected TypeError but no exception was raised (false was returned)
  fails "Module#refine and alias aliases a method within a refinement module, but not outside it" # NameError: undefined method `count' for class `'
  fails "Module#refine and alias_method aliases a method within a refinement module, but not outside it" # NameError: undefined method `count' for class `'
  fails "Module#refine and instance_methods returns a list of methods including those of the refined module" # Expected ["to_json_format",  "initialize",  "&",  "|",  "*",  "+",  "-",  "<<",  "<=>",  "==",  "[]",  "[]=",  "any?",  "assoc",  "at",  "bsearch_index",  "bsearch",  "cycle",  "clear",  "count",  "initialize_copy",  "collect",  "collect!",  "combination",  "repeated_combination",  "compact",  "compact!",  "concat",  "delete",  "delete_at",  "delete_if",  "difference",  "dig",  "drop",  "dup",  "each",  "each_index",  "empty?",  "eql?",  "fetch",  "fill",  "first",  "flatten",  "flatten!",  "hash",  "include?",  "index",  "insert",  "inspect",  "intersection",  "join",  "keep_if",  "last",  "length",  "map",  "map!",  "max",  "min",  "permutation",  "repeated_permutation",  "pop",  "product",  "push",  "append",  "rassoc",  "reject",  "reject!",  "replace",  "reverse",  "reverse!",  "reverse_each",  "rindex",  "rotate",  "rotate!",  "sample",  "select",  "select!",  "filter",  "filter!",  "shift",  "size",  "shuffle",  "shuffle!",  "slice",  "slice!",  "sort",  "sort!",  "sort_by!",  "take",  "take_while",  "to_a",  "to_ary",  "to_h",  "to_s",  "transpose",  "union",  "uniq",  "uniq!",  "unshift",  "prepend",  "values_at",  "zip",  "instance_variables",  "pack",  "pretty_print",  "pretty_print_cycle",  "__marshal__",  "deconstruct",  "all?",  "chunk",  "chunk_while",  "collect_concat",  "detect",  "drop_while",  "each_cons",  "each_entry",  "each_slice",  "each_with_index",  "each_with_object",  "entries",  "filter_map",  "find",  "find_all",  "find_index",  "flat_map",  "grep",  "grep_v",  "group_by",  "inject",  "lazy",  "enumerator_size",  "max_by",  "member?",  "min_by",  "minmax",  "minmax_by",  "none?",  "one?",  "partition",  "reduce",  "slice_before",  "slice_after",  "slice_when",  "sort_by",  "sum",  "tally",  "to_set",  "require",  "using",  "guard",  "guard_not",  "with_feature",  "without_feature",  "new_fd",  "new_io",  "should",  "should_not",  "version_is",  "ruby_version_is",  "suppress_warning",  "suppress_keyword_warning",  "should_receive",  "should_not_receive",  "stub!",  "mock",  "mock_int",  "mock_numeric",  "evaluate",  "before",  "after",  "describe",  "it",  "it_should_behave_like",  "context",  "specify",  "it_behaves_like",  "ruby_bug",  "conflicts_with",  "big_endian",  "little_endian",  "platform_is",  "platform_is_not",  "quarantine!",  "not_supported_on",  "as_superuser",  "as_user",  "argf",  "argv",  "new_datetime",  "with_timezone",  "fixture",  "flunk",  "cp",  "mkdir_p",  "rm_r",  "touch",  "mock_to_path",  "nan_value",  "infinity_value",  "bignum_value",  "max_long",  "min_long",  "fixnum_max",  "fixnum_min",  "ruby_exe_options",  "resolve_ruby_exe",  "ruby_exe",  "ruby_cmd",  "opal_filter",  "opal_unsupported_filter",  "frozen_error_class",  "pack_format",  "module_specs_public_method_on_object",  "module_specs_private_method_on_object",  "module_specs_protected_method_on_object",  "module_specs_private_method_on_object_for_kernel_public",  "module_specs_public_method_on_object_for_kernel_protected",  "module_specs_public_method_on_object_for_kernel_private",  "unpack_format",  "toplevel_define_other_method",  "some_toplevel_method",  "public_toplevel_method",  "main_public_method",  "main_public_method2",  "main_private_method",  "main_private_method2",  "check_autoload",  "defined_specs_method",  "defined_specs_receiver",  "expect",  "eq",  "pretty_print_instance_variables",  "pretty_print_inspect",  "method_missing",  "=~",  "!~",  "===",  "method",  "methods",  "public_methods",  "Array",  "at_exit",  "caller",  "class",  "copy_instance_variables",  "copy_singleton_methods",  "clone",  "initialize_clone",  "define_singleton_method",  "initialize_dup",  "enum_for",  "to_enum",  "equal?",  "exit",  "extend",  "instance_of?",  "instance_variable_defined?",  "instance_variable_get",  "instance_variable_set",  "remove_instance_variable",  "Integer",  "Float",  "Hash",  "is_a?",  "itself",  "kind_of?",  "lambda",  "load",  "loop",  "nil?",  "object_id",  "printf",  "proc",  "puts",  "p",  "print",  "warn",  "raise",  "fail",  "rand",  "respond_to?",  "respond_to_missing?",  "require_relative",  "require_tree",  "send",  "public_send",  "singleton_class",  "sleep",  "srand",  "String",  "tap",  "to_proc",  "catch",  "throw",  "open",  "yield_self",  "then",  "format",  "sprintf",  "Complex",  "Rational",  "freeze",  "frozen?",  "taint",  "untaint",  "tainted?",  "private_methods",  "private_instance_methods",  "eval",  "node_require",  "Pathname",  "require_remote",  "pretty_inspect",  "pp",  "opal_parse",  "eval_js",  "binding",  "BigDecimal",  "module_specs_public_method_on_kernel",  "module_specs_alias_on_kernel",  "__send__",  "!=",  "__id__",  "!",  "instance_eval",  "instance_exec",  "singleton_method_added",  "singleton_method_removed",  "singleton_method_undefined"] == [] to be truthy but was false
  fails "Module#refine applies refinements to calls in the refine block" # NoMethodError: undefined method `foo' for "hello"
  fails "Module#refine does not override methods in subclasses" # Expected "foo from refinement" == "foo from subclass" to be truthy but was false
  fails "Module#refine for methods accessed indirectly is honored by BasicObject#__send__" # Expected "foo" == "foo from refinement" to be truthy but was false
  fails "Module#refine for methods accessed indirectly is honored by Kernel#instance_method" # NameError: undefined method `foo' for class `'
  fails "Module#refine for methods accessed indirectly is honored by Kernel#method" # NameError: undefined method `foo' for class `#<Class:0x87710>'
  fails "Module#refine for methods accessed indirectly is honored by Kernel#public_method" # NoMethodError: undefined method `public_method' for #<#<Class:0x1b194>:0x1b196>
  fails "Module#refine for methods accessed indirectly is honored by Kernel#public_send" # Expected "foo" == "foo from refinement" to be truthy but was false
  fails "Module#refine for methods accessed indirectly is honored by Kernel#respond_to?" # Expected false == true to be truthy but was false
  fails "Module#refine for methods accessed indirectly is honored by Kernel#send" # Expected "foo" == "foo from refinement" to be truthy but was false
  fails "Module#refine for methods accessed indirectly is honored by Symbol#to_proc"
  fails "Module#refine for methods accessed indirectly is honored by string interpolation"
  fails "Module#refine looks in the included modules for builtin methods"
  fails "Module#refine makes available all refinements from the same module" # NoMethodError: undefined method `dump' for "1"
  fails "Module#refine method lookup looks in the included modules for builtin methods" # NoMethodError: undefined method `tmp' for #<MSpecEnv:0x1aaee>
  fails "Module#refine method lookup looks in the object singleton class first" # Expected "foo from refinement" == "foo from singleton class" to be truthy but was false
  fails "Module#refine module inclusion activates all refinements from all ancestors" # NoMethodError: undefined method `to_json_format' for 5
  fails "Module#refine module inclusion overrides methods of ancestors by methods in descendants" # NoMethodError: undefined method `to_json_format' for 5
  fails "Module#refine raises ArgumentError if not given a block" # Expected ArgumentError but got: LocalJumpError (no block given)
  fails "Module#refine raises TypeError if not passed a class" # Expected TypeError but no exception was raised (#<Module:0x1abe8> was returned)
  fails "Module#refine when super is called in a refinement looks in the another active refinement if super called from included modules" # Expected ["B", "C"] == ["B", "A", "C"] to be truthy but was false
  fails "Module#refine when super is called in a refinement looks in the current active refinement from included modules" # Expected ["B", "C"] == ["B", "A", "LAST", "C"] to be truthy but was false
  fails "Module#refine when super is called in a refinement looks in the included to refinery module" # Expected "foo" == "foo from included module" to be truthy but was false
  fails "Module#refine when super is called in a refinement looks in the lexical scope refinements before other active refinements" # Expected ["A", "C"] == ["A", "LOCAL", "C"] to be truthy but was false
  fails "Module#remove_const calls #to_str to convert the given name to a String"
  fails "Module#remove_const raises a TypeError if conversion to a String by calling #to_str fails"
  fails "Module#remove_const returns nil when removing autoloaded constant"
  fails "Module#ruby2_keywords acceps String as well" # NoMethodError: undefined method `ruby2_keywords' for #<Class:#<Object:0x40040>>
  fails "Module#ruby2_keywords marks the final hash argument as keyword hash" # NoMethodError: undefined method `ruby2_keywords' for #<Class:#<Object:0x40036>>
  fails "Module#ruby2_keywords prints warning when a method accepts keyword splat" # NoMethodError: undefined method `ruby2_keywords' for #<Class:#<Object:0x4001e>>
  fails "Module#ruby2_keywords prints warning when a method accepts keywords" # NoMethodError: undefined method `ruby2_keywords' for #<Class:#<Object:0x40048>>
  fails "Module#ruby2_keywords prints warning when a method does not accept argument splat" # NoMethodError: undefined method `ruby2_keywords' for #<Class:#<Object:0x4002e>>
  fails "Module#ruby2_keywords raises NameError when passed not existing method name" # Expected NameError (/undefined method `not_existing'/) but got: NoMethodError (undefined method `ruby2_keywords' for #<Class:#<Object:0x4003a>>)
  fails "Module#ruby2_keywords raises TypeError when passed not Symbol or String" # Expected TypeError (/is not a symbol nor a string/) but got: NoMethodError (undefined method `ruby2_keywords' for #<Class:#<Object:0x40026>>)
  fails "Module#ruby2_keywords returns nil" # NoMethodError: undefined method `ruby2_keywords' for #<Class:#<Object:0x40044>>
  fails "Module#to_s always show the refinement name, even if the module is named" # NoMethodError: undefined method `refine' for ModuleSpecs::RefinementInspect
  fails "Module#to_s does not call #inspect or #to_s for singleton classes" # Expected "#<Class:#<:0x25bee>>" =~ /\A#<Class:#<#<Class:0x25bf2>:0x\h+>>\z/ to be truthy but was nil
  fails "Module#to_s for objects includes class name and object ID" # Expected "#<Class:#<ModuleSpecs::NamedClass:0xa424>>" =~ /^#<Class:#<ModuleSpecs::NamedClass:0x\h+>>$/ to be truthy but was nil
  fails "Module#to_s for the singleton class of an object of an anonymous class" # Expected "#<Class:#<:0xa450>>" == "#<Class:#<#<Class:0xa454>:0xa450>>" to be truthy but was false
  fails "Module#to_s works with an anonymous class" # Expected "#<Class:0xa482>" =~ /^#<Class:0x\h+>$/ to be truthy but was nil
  fails "Module#to_s works with an anonymous module" # Expected "#<Module:0xa4ae>" =~ /^#<Module:0x\h+>$/ to be truthy but was nil
  fails "Module#undef_method raises a NameError when passed a missing name for a class" # Expected NameError (/undefined method `not_exist' for class `#<Class:0xa514>'/) but got: NameError (method 'not_exist' not defined in )
  fails "Module#undef_method raises a NameError when passed a missing name for a metaclass" # Expected NameError (/undefined method `not_exist' for class `String'/) but got: NameError (method 'not_exist' not defined in )
  fails "Module#undef_method raises a NameError when passed a missing name for a module" # Expected NameError (/undefined method `not_exist' for module `#<Module:0xa502>'/) but got: NameError (method 'not_exist' not defined in )
  fails "Module#undef_method raises a NameError when passed a missing name for a singleton class" # Expected NameError (/undefined method `not_exist' for class `#<Class:#<:0xa51a>>'/) but got: NameError (method 'not_exist' not defined in )
  fails "Module#using does not accept class" # Expected TypeError but no exception was raised (#<Module:0x3dd76> was returned)
  fails "Module#using imports class refinements from module into the current class/module" # NoMethodError: undefined method `foo' for 1
  fails "Module#using raises TypeError if passed something other than module" # Expected TypeError but no exception was raised (#<Module:0x3dd66> was returned)
  fails "Module#using scope of refinement is active for block called via instance_eval" # TypeError: can't define singleton
  fails "Module#using scope of refinement is active for block called via instance_exec" # NoMethodError: undefined method `foo' for 1
  fails "Module#using scope of refinement is active for class defined via Class.new {}" # NoMethodError: undefined method `foo' for 1
  fails "Module#using scope of refinement is active for module defined via Module.new {}" # NoMethodError: undefined method `foo' for 1
  fails "Module#using works in classes too" # NoMethodError: undefined method `foo' for 1
end
