<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Vue js File Upload with PHP & Axios</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  
 </head>
 <body>
  <div class="container" id="uploadApp">
   <br />
   <h3 align="center">Vue js File Upload with PHP & Axios</h3>
   <br />
   <div v-if="successAlert" class="alert alert-success alert-dismissible">
    <a href="#" class="close" aria-label="close" @click="successAlert=false">&times;</a>
    {{ successMessage }}
   </div>

   <div v-if="errorAlert" class="alert alert-danger alert-dismissible">
    <a href="#" class="close" aria-label="close" @click="errorAlert=false">&times;</a>
    {{ errorMessage }}
   </div>
   <div class="panel panel-default">
    <div class="panel-heading">
     <div class="row">
      <div class="col-md-6">
       <h3 class="panel-title">Upload File</h3>
      </div>
      <div class="col-md-6" align="right">
       
      </div>
     </div>
    </div>
    <div class="panel-body">
     <div class="row">
      <div class="col-md-4" align="right">
       <label>Select Image</label>
      </div>
      <div class="col-md-4">
       <input type="file" ref="file" />
      </div>
      <div class="col-md-4">
       <button type="button" @click="uploadImage" class="btn btn-primary">Upload Image</button>
      </div>
     </div>
     <br />
     <br />
     <div v-html="uploadedImage" align="center"></div>
    </div>
   </div>
  </div>
 </body>
</html>






<script>

var application = new Vue({
 el:'#uploadApp',
 data:{
  file:'',
  successAlert:false,
  errorAlert:false,
  uploadedImage:'',
 },
 methods:{
  uploadImage:function(){

   application.file = application.$refs.file.files[0];

   var formData = new FormData();

   formData.append('file', application.file);

   axios.post('upload.php', formData, {
    header:{
     'Content-Type' : 'multipart/form-data'
    }
   }).then(function(response){
    if(response.data.image == '')
    {
     application.errorAlert = true;
     application.successAlert = false;
     application.errorMessage = response.data.message;
     application.successMessage = '';
     application.uploadedImage = '';
    }
    else
    {
     application.errorAlert = false;
     application.successAlert = true;
     application.errorMessage = '';
     application.successMessage = response.data.message;
     var image_html = "<img src='"+response.data.image+"' class='img-thumbnail' width='200' />";
     application.uploadedImage = image_html;
     application.$refs.file.value = '';
    }
   });
  }
 },
});
</script>



