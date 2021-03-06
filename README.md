# FUNCTIFY v0.0.1

This monkey patch adds a method to Hash, which (when invoked) adds a function for each key in the hash which returns the value for that key at the time it was functified. 

## Example Usage
    {:a => 1}.functify.a == 1

## Command Line
    $ ./functify
    FUNCTIFY v0.0.1
    Please enter a hash to be functified:
    56
    You must enter a hash in Ruby or JSON format; i.e. {:a => 7} or {"a": 7}
    {:a => 7}
    7

## Build Status
    Hash
      #functify
        modifies self
        does not modify every Hash object
        is still a hash
        is frozen for functions, but not hash values
        creates a function for each key in the hash,
          so {:a => 2}.functify.a
            returns 2
          so {:a => 3}.functify.a
            returns 3
          so {:a => 5}.functify.a
            returns 5
    
    7 examples, 0 failures