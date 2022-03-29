# CSCI 301: *Formal Language Theory and Formal Programing* Notes 

## Sets

### Defining Sets
* **Set:** A collection of elements
* Set notation: `{1, 2, 3}`
* Sets cannot have duplicate elements, so `{1, 2, 3} == {1, 2, 2, 3}`
* No order or arrangement of the elements, so `{1, 2, 3} == {3, 2, 1}`
* How can we define sets?
    * Explicitly: `{John, Bob, Steve}`
    * Implicitly: `{1, 2, 3, ...}` or `{2, 3, 5, 7, 11, 13, 17, ...}`
    * Set Builder: `{x: x is prime} or {x|x is odd}`.
    In general `{x: P(x)}` where `P(x)` is some predicate (property)
    * A set with no elements: `{}` or &empty;


### Set Relations

* If two sets have the same elements, then they are equal

```
 if A = {1, 2, 3}; B = {1, 2, 3}; C = {3, 4} then:
    A == B
    A != C
    B != C
```

* `{`&empty;`}` does not equal &empty;, because `{{}}` does not equal `{}`

### Cardinality
* **Cardinality:** The number of distinct elements in a finite set 
* Cardinality notion: `|S| == 0` where `S` is &empty;  
