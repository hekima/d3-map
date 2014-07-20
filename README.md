d3-map
======

Re-usable topojson maps using [d3.js](http://d3js.org/).

Usage:
-----

Include <code>d3map.min.js</code>, <code>d3.js</code> and <code>topojson.js</code> to your HTML, as follows:

```
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<script src="d3map.min.js"></script>
```

Maps may be created using the following commands:

```
  d3.json('data/br-2.json', function(error, data) {
    if (error) {
      console.log(error);
    } else {
      var two = d3map.viz()
        .container('#example-2')
        .data(data)
        .id('id')
        .map({
          'topojson': 'resources/br-states.min.json',
          'unit': 'states',
          'key': 'name'
        })
        .color({
          'key': 'value',
          'range': ['#FEC44F', '#40004B'],
          'interpolate': true
        })
        .width(400)
        .height(400)
        .onclick(function(d) {
          console.log(d.properties.name);
        })
        .draw();
    }
  });
```

Examples on [zahpee.github.io/d3-map](http://zahpee.github.io/d3-map).
