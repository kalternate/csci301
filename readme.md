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

### Membership 
* `x` &isin; `A` if x is an element of the set `A`
* `x` &notin; `A` if x is not an element of the set `A`

### Subsets
* If `A` and `B` are sets, and every element of `A` is also an element of `B`, then we say that `A` is a **Subset** of `B`
*  `A` &sube; `B` if `A` is a subset of `B` 


### Proper Subsets
* If `A` is a subset of `B`, and there is some element in `B` that is not in `A`, then `A` is a **Proper Subset** of `B`
* `A` &sub; `B` if `A` is a subset of `B`

### Power Sets
* The collection of all subsets of a set `S` is called the **Power Set** of `S`
* If `S` is a finite set, then the size of the power `(S)` is `2^|S|`
* Any set is a subset of its power set

### Cartesian Product
* The **Cartesian Product** of two sets `A` and `B` is:
    * `A * B` 
    * `{(a, b) : a ∈ A, b ∈ B}`
    * Thus, `A * B` is a set of ordered pairs of elements from `A` and `B`

### Union 
* The **Union** of two sets `A` and `B` is:
    * `A ∪ B` 
    * `{x : x ∈ or x ∈ B}`
* Combines both sets

### Intersection
* The **Intersection** of two sets `A` and `B` is:
   * `A ∩ B` 
   * `{x : x ∈ A and x ∈ B}`
* Sets whose intersection is empty are called **Disjoint Sets**


### Difference 
* The **Difference** of `A` and `B` is the set:
    * `A - B` 
    * `{x : (x ∈ A and x ∉ B)}`
    * The elements that are in `A` but not in `B`

### Symmetric Difference
* The Symmetric Difference of `A` and `B` is 
    * `A ⊕ B`
    * `A Δ B`
    * `{x : (x ∈ A and x ∉ B) or (x ∉ A and x ∈ B)}`
    * `(A - B) ∪ (B - A)`
    * The elements in `A` and the elements in `B` excluding the elements in both `A` and `B`

### Universe
* Every set is a subset of the **Universe**, denoted as `U`

### Complement
* The **Complement** of a set `A` is the set:
    * `A'`
    * `{x : x ∉ A}`
* `∅' = U` and `∅ = U'`

### Set Identities
* **DeMorgan's Law:**
    * `(A ∪ B)' = A' ∩ B'`
    * `(A ∩ B)' = A' ∪ B'`
* **Commutativity:**
    * `A ∪ B = B ∪ A`
    * `A ∩ B = B ∩ A`
* **Associativity:**
    * `(A ∪ B) ∪ C = A ∪ (B ∪ C)`
    * `(A ∩ B) ∩ C = A ∪ (B ∩ C)`
* **Distributivity:**
    * `A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C)`
    * `A ∩ (B ∪ C) = (A ∪ B) ∪ (A ∩ C)`

## Logic

### Statement
* A **Statement** is a declarative sentence; a sentence which attempts to state a fact as opposed to a question, command, exclamation 
* The **Truth Value** of a statement is whether the statement is true or false

### Implication
* If `P → Q`, and `P` is true, then that **Implies** `Q` is also true
* However, `Q` can be still be true even if `P` is false
* The **Converse** of `P → Q` is `Q → P`
* A **Bi-Conditional Statement** is an implication statement where the converse is also true

### Quantifiers

* The **Universal Quantifier**, noted as `∀`, means for all
* The **Existential Quantifier**, noted as `∃`, means for at least one 


### Proof Terminology
* A statement that has been proven to be always true is called a **Theorem**
* A statement that is true but not as significant is called a **Proposition**
* A **Lemma** is a theorem whose main purpose is to help prove another theorem
* A **Corollary** is a theorem which is a direct result of another theorem