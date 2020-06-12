<?php

//action.php

$connect = new PDO("mysql:host=localhost;dbname=ornekler", "root", "root");

$received_data = json_decode(file_get_contents("php://input"));

if($received_data->request_for == 'country')
{
 $query = "
 SELECT * FROM country 
 ORDER BY country_name ASC
 ";
}

if($received_data->request_for == 'state')
{
 $query = "
 SELECT * FROM state 
 WHERE country_id = :country_id
 ORDER BY state_name ASC
 ";
}

if($received_data->request_for == 'city')
{
 $query = "
 SELECT * FROM city 
 WHERE state_id = :state_id
 ORDER BY city_name ASC
 ";
}

$statement = $connect->prepare($query);

if($received_data->request_for == 'city')  $statement->bindParam(':state_id',   $received_data->state_id);
if($received_data->request_for == 'state') $statement->bindParam(':country_id', $received_data->country_id);


$statement->execute();

while($row = $statement->fetch(PDO::FETCH_ASSOC))
{
 $data[] = $row;
}

echo json_encode($data);

/*
?>

<?php

//action.php

$connect = new PDO("mysql:host=localhost;dbname=laravel", "root", "root");

$received_data = json_decode(file_get_contents("php://input"));

if($received_data->request_for == 'country') {
	$query = "SELECT * FROM country ORDER BY country_name ASC "; 
}

if($received_data->request_for == 'state') {
	$query = "SELECT * FROM city WHERE state_id = :state_id ORDER BY city_name ASC "; 
}

if($received_data->request_for == 'city') {
	$query = "SELECT * FROM state WHERE country_id = :country_id ORDER BY state_name ASC "; 
}

);

$statement = $connect->prepare($query);

//if($received_data->request_for == 'state')   $statement->bindParam(':state_id',   $received_data->state_id);
//if($received_data->request_for == 'country') $statement->bindParam(':country_id', $received_data->country_id);

$statement->execute();

while($row = $statement->fetch(PDO::FETCH_ASSOC))
{
	$data[] = $row;
}

echo json_encode($data);

*/
