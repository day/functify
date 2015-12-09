# FUNCTIFY v0.0.1

This monkey patch adds a method to Hash, which (when invoked) adds a function for each key in the hash which returns the value for that key at the time it was functified. 

Example:
    {:a => 1}.functify.a == 1