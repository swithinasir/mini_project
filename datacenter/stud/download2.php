 <?php
 header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=sample_file.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('regno', 'name'));       
      fclose($output);  
	  ?>