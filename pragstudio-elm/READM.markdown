# Pragmatic Stuiod Elm

* Compile into index.html
  * `elm make --warn Bingo.elm --output index.html`

* Compile into JavaSciprt
  * `elm make Bingo.elm --output bingo.js`

* Start a web server
  * `elm reactor -a=localhost -p=9000`

* Start REPL
  * `elm repl`

### 09 - Creating Entry

* Create record
  `entry = { phrase = "future-proof", points = 100, wasSpoken = False }`
* Accessing attributes
  * `entry.points` returns `100`
  * `entry.wasSpoken` returns `False`
* Updating attributes
  * `clonedEntry = { entry | points = 500, wasSpoken = True }`
