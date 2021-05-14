Plotly.d3.json('deployment/segment-analysis/kmeans-data-v2.json', function(err, fig) {
    // assuming json is formatted as { "data": [/* */], "layout": {/* */} }
  
    Plotly.plot('graph-kmeans-v2', fig.data, fig.layout);
  });

console.log( Plotly.BUILD );
