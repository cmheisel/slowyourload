slowyourload
==================

A proxy for delaying the loading of assets. Useful for seeing what happens to Web pages or server-side code when the resource takes a while to load.

Usage
========

```
    pip install -r requirements.txt
    python ./slowyourload.py
    http://localhost:5000/<delay in seconds>/http://anotherdomain.com/some/thing.js
    http://localhost:5000/<delay in seconds>/https://secure.anotherdomain.com/some/thing.js
```
