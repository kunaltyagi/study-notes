# CS 213 : Data Structures and Algoithms

## Notes

### Interpolation Search

For uniform distribution of data only

* mid = (high-low)/2
* to search for x, next = low + [ $$\frac{x - a[low]}{a[high] - a[low]}$$*(high - low - 1)]

### ADT

1. __List__:
    * first(), last(), isEmpty(), size(), prev(p), next(p);
    * replace(p), insertBefore/After(p,e), insertFirst/Last(e), remove(p)

2. __Vector__:
    * size(), isEmpty()
    * elemAtRank(r), replaceAtRank(r,e), insertAtRank(r,e), removeAtRank(r)

3. __Sequence__:
    * List + Vector
    * atRank(r), rankOf(p)

4. __Iterator__:
    * obj obj(), bool hasNext(), obj nextObj(), reset()


