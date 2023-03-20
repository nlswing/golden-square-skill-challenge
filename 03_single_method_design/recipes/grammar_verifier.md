# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a
> suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```Ruby
checked_grammar = grammar_verifier(text)

* text is a string with words
* checked_grammar is true or false on whether the text matches the specified parameters
* it is a pure function
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```Ruby
# 1
grammar_verifier("") => false

# 2
grammar_verifier("the cat sat on the mat") => false

# 3
grammar_verifier("The cat sat on the mat") => false

# 4
grammar_verifier("the cat sat on the mat.") => false

# 5
grammar_verifier("The cat sat on the mat.") => true

# 6
grammar_verifier("The cat sat on the mat?") => true

# 7
grammar_verifier("The cat sat on the mat!") => false


