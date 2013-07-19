ipython-notebook Cookbook
=========================
This cookbook sets up iPython notebook server.


Requirements
------------

#### packages

- python
- pip

Attributes
----------

#### ipython-notebook::launch
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ipython-notebook']['port']</tt></td>
    <td>Number</td>
    <td>Port Number the notebook server will listen on.</td>
    <td>8888</td>
  </tr>
  <tr>
    <td><tt>['ipython-notebook']['ip']</tt></td>
    <td>String</td>
    <td>The IP address the notebook server will listen on.</td>
    <td>127.0.0.1</td>
  </tr>
</table>

Usage
-----
#### Install Only

Just include `ipython-notebook` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "ipython-notebook"
  ]
}
```

#### Install And Launch

Some options needed.

```json
{
  "name":"my_node",
  "ipython-notebook": {
      "port": 8888,
      "ip": "*"
  },
  "run_list": [
    "ipython-notebook",
    "ipython-notebook::launch"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

Todo
----

- Make notes directory and clone notebook repo.
- Use supervisor to daemonize

License and Authors
-------------------

The MIT License

Copyright (c) 2013 hagino3000 (http://twitter.com/hagino3000)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

