Plotly.d3.json('deployment/segment-analysis/kmeans-data.json', function(err, fig) {
    // assuming json is formatted as { "data": [/* */], "layout": {/* */} }
  
    Plotly.plot('kmeans-chart', fig.data, fig.layout);
  });

console.log( Plotly.BUILD );
