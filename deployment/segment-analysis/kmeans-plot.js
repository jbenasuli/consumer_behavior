Plotly.d3.json('deployment/segment-analysis/kmeanschart.json', function(err, fig) {
    // assuming json is formatted as { "data": [/* */], "layout": {/* */} }
  
    Plotly.plot('graph-kmeans', fig.data, fig.layout);
  });

console.log( Plotly.BUILD );
