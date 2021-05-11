// import the data from data.js
const tableData = data;

// Reference the HTML table using d3
var tbody = d3.select("tbody");

function buildTable(data) {
    // clear out existing data
    tbody.html("");

  // loop through each object
  //append a row and cell for each value in the row of data
  data.forEach((dataRow) => {
    // append a row to the table body
    let row = tbody.append("tr");

    // loop through each field in dataRow
    // add each value as a table cell (td)
    Object.values(dataRow).forEach((val) => {
        let cell = row.append("td");
        cell.text(val);
        }
    );
});
}

function handleClick() {
  // grab the segment value from the filter
    let segment = d3.select("#segment").property("value");
    let filteredData = tableData;
    
    // check to see if a date was entered and filter
    if (segment) {
        // apply filter where 'segment' value matches filter date
        filteredData = filteredData.filter(row => row.segment === segment);
      }
    // call buildTable function on filtered data
    buildTable(filteredData);
}

// attach event listener for filter button
d3.selectAll("#filter-btn").on("click", handleClick);

// build table when the page loads
buildTable(tableData);