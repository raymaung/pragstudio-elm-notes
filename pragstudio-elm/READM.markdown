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

### 10 - Rendering the Mode

* `List.map`
* ```
  import String
  names = [ "larray", "moe", "curly" ]
  List.map String.toUpper names
  ```

### 12 Reactive Sort

* Installing Package
  `elm package install evancz/start-app`

### 13 Delete Entries

* Anonymous Function
  * `(\num1 num2 -> num1 + num2)`
    * `\` denotes beginning of arguments
  * `/=` means *not-equal*

### 14 Reactive Delete

* Curlying
  * `multiply num1 num2 = num1 * num2`
  * `partialMultiPlay = multiply 3`
  * `partialMultiPlay 2` returns `6`