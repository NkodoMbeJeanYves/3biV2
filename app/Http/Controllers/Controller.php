<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Str;
use Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;
# resize uploaded files
use Intervention\Image\Facades\Image;
use File;
 

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    /**
     * @Comment upload file
     */
    
    public function fileUpload(Request $request){
        /*  Alternative #1 en cas d'upload */
      if ($request->hasFile('file')) 
      {

        $request->validate([
            'file' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $messages = [];
        
        // retrieve involved model
        $tableName = $request['tableName'];
        $primaryColName = $request['primaryColName'];
        $model = substr($primaryColName, 0, strlen($primaryColName) - 3);  
        $primaryColValue = $request['primaryColValue'];

        $image = $request->file('file'); 
        $partialPathName = '/storage/images/'.$tableName;
        // check if it is possible to store image in originalpath by creating it
        $originalpath = public_path($partialPathName);
        # retrieve file name if it already exists
        $fullpath = ("\App\Models\\$model")::find($primaryColValue)->file;
        # switch size via model
        switch ($tableName) {
            case 'profiles' || 'students':
                # resize using profile component width = 200, height = 200
                $img = Image::make($image)->resize(200, 200);
                break;

            case 'schools':
                $img = Image::make($image);
                break;
            default:
                # code...
                $img = Image::make($image)->resize(200, 200);
                break;
        }

        if ($fullpath){
            # delete older file
            $fileName = explode('/', $fullpath)[4];
            file_put_contents('pwd.txt', $originalpath.'/'.$fileName);
            // do not delete default file 
            if($fileName != 'default.png') unlink($originalpath.'/'.$fileName);                
        }else{
            $this->createDirecrotoryUnderStoragePath($partialPathName);
        }
        # set new fileName
        $fileName = time().'.'.$image->getClientOriginalExtension();
        # save new file
        $img->save($originalpath.'/'.$fileName);
        $fullNameUnderPublicPath = $partialPathName.'/'.$fileName;
        DB::table($tableName)->where($primaryColName, $primaryColValue)->update(['file' => $fullNameUnderPublicPath]);
        return response()->json($fullNameUnderPublicPath);
        
      }
      return response()->json('Any file provided');
    }


    /**
     * @function CreateDirectory
     * create required directory if not exist and set permissions
     */
    public function createDirecrotoryUnderStoragePath(String $pathName = null)
    {
        $path = public_path($pathName);
            if(!File::isDirectory($path)){
                File::makeDirectory($path, 0777, true, true);
            }
    }



    // generate custom id
    public function generate_Id($model){
        while(1){
            $id = strtolower(str::random(47));
            if(is_null($model::find($id))){
                return $id;
            }
        }
    }

    /**
     * @param METHOD $method    GET|POST|PATCH|PUT|DELETE
     * @param URL $url
     */
    public function setHeaderMethod(string $method, string $url = null){
        $url = (!is_null($url))?$url:'*';
        switch (strtoupper($method)){
            case 'GET' : 
                // required headers
                header("Access-Control-Allow-Origin: $url ");
                header("Content-Type: application/json");
                header("Access-Control-Allow-Methods: GET");
                header("Access-Control-Max-Age: 3600");
                header("Access-Control-Allow-Headers: Origin, Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
        
            break;
            case 'POST' : 
                // required headers
                header("Access-Control-Allow-Origin: $url");
                header("Content-Type: application/json; charset=UTF-8");
                header("Access-Control-Allow-Methods: POST");
                header("Access-Control-Max-Age: 3600");
                header("Access-Control-Allow-Headers: Origin, Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
            break;
            case 'PUT' : 
                // required headers
                header("Access-Control-Allow-Origin: $url");
                header("Content-Type: application/json; charset=UTF-8");
                header("Access-Control-Allow-Methods: PUT");
                header("Access-Control-Max-Age: 3600");
                header("Access-Control-Allow-Headers: Origin, Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
            break;
            case 'PATCH' : 
                // required headers
                header("Access-Control-Allow-Origin: $url");
                header("Content-Type: application/json; charset=UTF-8");
                header("Access-Control-Allow-Methods: PATCH");
                header("Access-Control-Max-Age: 3600");
                header("Access-Control-Allow-Headers: Origin, Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
            break;
            case 'DELETE' : 
                // required headers
                header("Access-Control-Allow-Origin: $url");
                header("Content-Type: application/json; charset=UTF-8");
                header("Access-Control-Allow-Methods: DELETE");
                header("Access-Control-Max-Age: 3600");
                header("Access-Control-Allow-Headers: Origin, Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
            break;
            default: 

                // required headers
                header("Access-Control-Allow-Origin: $url");
                header("Content-Type: application/json; charset=UTF-8");
                header("Access-Control-Allow-Methods: GET");
                header("Access-Control-Max-Age: 3600");
                header("Access-Control-Allow-Headers: Origin, Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
            break;


        }
    }    
}
