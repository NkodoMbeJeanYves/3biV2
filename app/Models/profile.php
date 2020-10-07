<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\role;
use Illuminate\Database\Eloquent\SoftDeletes;

class profile extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    protected $table = "profiles";
    protected $primaryKey = "profile_id";

    protected $fillable = [
        'profile_id',
        'profile_name',
        'profile_dateofbirth',
        'profile_placeofbirth',
        'profile_sexe',
        'profile_phone',
        'profile_phone_2',
        'role',
        'file',
        'user_id',
        'is_checked',
        'school_id',
        'is_admin',
    ];

    public function role(){
    	return $this->hasOne(role::class, 'id','role');
    }
}
