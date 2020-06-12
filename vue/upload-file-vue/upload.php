<?php

//upload.php

$image   = '';
$message = 'Select Image';

if(isset($_FILES['file']['name'])) {
 
    $image_name       = $_FILES['file']['name'];
    $valid_extensions = array("jpg","jpeg","png");
    $extension        = pathinfo($image_name, PATHINFO_EXTENSION);

    if(in_array($extension, $valid_extensions)) {
        $upload_path = '../upload/' . time() . '.' . $extension; // DİKKAT!! upload klasörü bir ÜST dizinde yer alıyor
        
        if(move_uploaded_file($_FILES['file']['tmp_name'], $upload_path)) {
          $message = 'Image Uploaded';
          $image = $upload_path;
        } else {
          $message = 'There is an error while uploading image';
        }

    } else {
      $message = 'Only .jpg, .jpeg and .png Image allowed to upload';
    }

}

$output = array(
 'upload_path' => $upload_path,
 'extension'   => $extension,
 'message'     => $message,
 'image'       => $image
);

echo json_encode($output);
