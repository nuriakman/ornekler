<?php

//fetch.php

include('database_connection.php');

$column = array("id", "first_name", "last_name", "gender");

$query = "SELECT * FROM tbl_sample ";

if(isset($_POST["search"]["value"]) and $_POST["search"]["value"] <> "")
{
 $query .= '
 WHERE first_name LIKE "%'.$_POST["search"]["value"].'%" 
     OR last_name LIKE "%'.$_POST["search"]["value"].'%" 
        OR gender LIKE "%'.$_POST["search"]["value"].'%" 
 ';
}

$queryOrderBy = 'ORDER BY id DESC ';
if(isset($_POST["order"])) {
 $queryOrderBy = 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}

$queryLimit = '';
if($_POST["length"] != -1) {
 $queryLimit = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

$query = "$query $queryOrderBy $queryLimit";

$statement = $connect->prepare($query);

$statement->execute();

$number_filter_row = $statement->rowCount();

$result = $statement->fetchAll();

$data = array();

foreach($result as $row)
{
 $sub_array = array();
 $sub_array[] = $row['id'];
 $sub_array[] = $row['first_name'];
 $sub_array[] = $row['last_name'];
 $sub_array[] = $row['gender'];
 $data[] = $sub_array;
}

function count_all_data($connect)
{
 $query = "SELECT * FROM tbl_sample";
 $statement = $connect->prepare($query);
 $statement->execute();
 return $statement->rowCount();
}

$output = array(
 'draw'   => intval($_POST['draw']),
 'recordsTotal' => count_all_data($connect),
 'recordsFiltered' => $number_filter_row,
 'query'   => $query,
 'data'    => $data
);

echo json_encode($output);

?>