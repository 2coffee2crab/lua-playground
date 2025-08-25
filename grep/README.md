# **Grep in Lua**

_"Why make it good when you can make it suck?"_


## What?
A toy grep written in Lua. No regex, single threaded.

### Usage

```sh
lua grep.lua <pattern> <file>
```

**Limitations:** `pattern` is case-sensitive, Lua pattern matching only (no regex). Requires two args; less is an error, more are silently ignored.


## Why?
Refer to the third line of this document.


## License:
The text files included on this directory are part of the public domain, and are free to use, copy and distribute.
