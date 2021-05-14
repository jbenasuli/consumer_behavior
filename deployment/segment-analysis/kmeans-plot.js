Plotly.d3.json(jsonUrl, function(err, fig) {
    // assuming json is formatted as { "data": [/* */], "layout": {/* */} }
  
    Plotly.plot('graph-id', fig.data, fig.layout);
  });

// var myJson = '{"data","layout"}';

// var figure = JSON.parse(myJson);

// Plotly.newPlot('graph-div', figure.data, figure.layout);

console.log( Plotly.BUILD );
