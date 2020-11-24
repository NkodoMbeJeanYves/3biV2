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

        # save new file
        $fileName = $this->saveImage($tableName, $request, $model);
        // $img->save($originalpath.'/'.$fileName);
        $fullNameUnderPublicPath = $partialPathName.'/'.$fileName;
        DB::table($tableName)->where($primaryColName, $primaryColValue)->update(['file' => $fullNameUnderPublicPath]);
        return response()->json($fullNameUnderPublicPath);
        
      }
      return response()->json('Any file provided');
    }


    
    function saveImage($tableName, Request $request, $model) {
        // get primaryColumn Value
        $primaryColValue = $request['primaryColValue'];
        // get file fullpath
        $fullpath = ("\App\Models\\$model")::find($primaryColValue)->file;
        // get image
        $image = $request->file('file');
        // get extension file
        $ext = $image->getClientOriginalExtension();
        // check if file already exists or not
        if (is_null($fullpath)){
            $imagename = time().'.'.$ext;
        } else {
            $imagename = explode('/', $fullpath)[4]; 
        }

        switch ($tableName) {
            case 'profiles' || 'students':
                # resize using profile component width = 200, height = 200
                if($tableName == 'profiles'){
                    $destinationPath = public_path('/storage/images/'.$tableName.'/thumbnails');
                    $thumb_img = Image::make($image->getRealPath())->resize(100, 100);
                    $thumb_img->save($destinationPath.'/'.$imagename,80);
                }

                $destinationPath = public_path('/storage/images/'.$tableName);
                $img = Image::make($image->getRealPath())->resize(200, 200); 
                break;

            case 'schools':
                $img = Image::make($image->getRealPath());
                $destinationPath = public_path('/storage/images/'.$tableName);
 
                break;
            default:
                # code...
                $img = Image::make($image)->resize(200, 200);
                // $destinationPath = URL::to('public/images/categories');
                $destinationPath = public_path('/storage/images/'.$tableName);
                
                break;
        }
        

        return ($img->save($destinationPath.'/'.$imagename))->basename;
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
     * @param $model model entity
     * @param $fieldName field on which we are going to compare occurences
     */
    public function generate_Uuid($model, $fieldName) {
        while (1) {
            $param = Str::uuid()->toString();
            $param = $param == null || $param == '' ? $this->v4() : $this->v5('unknow');  
            if (is_null($model::where("{$fieldName}", $param)->first())) {
                return $param;
            }
        }
    }

    /**
     * @comment method to generate a universal unique identifier
     */
    private function v4() {
        $data = openssl_random_pseudo_bytes(16, $secure);
        if (false === $data) { return false; }
        $data[6] = chr(ord($data[6]) & 0x0f | 0x40); // set version to 0100
        $data[8] = chr(ord($data[8]) & 0x3f | 0x80); // set bits 6-7 to 10
        return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
    }
    
    
    /**
     * @comment method to generate a universal unique identifier
     * @comment https://tools.ietf.org/html/rfc4122#section-4.3
     */
    private function v5($name) {
        $hash = sha1($name, false);
        return sprintf(
            '%s-%s-5%s-%s-%s',
            substr($hash,  0,  8),
            substr($hash,  8,  4),
            substr($hash, 17,  3),
            substr($hash, 24,  4),
            substr($hash, 32, 12)
        );
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
