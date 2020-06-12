<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class FormValidationController extends Controller
{
    function index()
    {
     return view('form_validation');
    }

    function insert(Request $request)
    {
     if(request()->ajax())
     {
      $data = array(
       'first_name' => $request->get('first_name'),
       'last_name'  => $request->get('last_name'),
       'email'   => $request->get('email'),
       'password'  => $request->get('password'),
       'website'  => $request->get('website')
      );

      DB::table('tbl_register')->insert($data);

      return response()->json(['success' => 'Data Added']);
     }
    }
}