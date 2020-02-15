void loadData() {
  // Load CSV file into a Table object
  // "header" option indicates the file has a header row
  table = loadTable("prep_ink.csv", "header");

  // The size of the array is determined by the total number of rows in the CSV
  liners = new Liner[table.getRowCount()]; 

  //iterate over all the rows in a table
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    // You can access the fields via their column name (or index)
    int brado = row.getInt("ordered_idx");
    int orig = row.getInt("dd_from_cout");
    int dest = row.getInt("dd_from_cin");
    int dur = row.getInt("duration");
    int col_code = row.getInt("col_code");
    int hh_out = row.getInt("hh_out");
    int hh_in = row.getInt("hh_in");
    String loc = row.getString("ItemLocation");
    
    //float mapped_x = map(brado, 0, 12603, 0, width); 
    float mapped_x = map(brado, 0, 12603, -50, 50); 
    //float mapped_y1 = map(orig, 0, 1460, 0, height);
    float mapped_y1 = map(orig, 0, 1460, -50, 50);
    //float mapped_y2 = map(dest, 0, 1709, 0, height);
    float mapped_y2 = map(dest, 0, 1709, -50, 50);
    
    //float mapped_hh = map(hh_out, 6, 20, 0, -1000); 
    float mapped_hh = map(hh_out, 7, 23, -50, 50);
    //float mapped_hhi = map(hh_in, 6, 20, 0, -1000); 
    float mapped_hhi = map(hh_in, 7, 23, -50, 50);

    // Make a Liner object out of the data read
    liners[i] = new Liner(mapped_x, mapped_y1, mapped_y2, dur, col_code, mapped_hh, mapped_hhi, loc);
  }
}
