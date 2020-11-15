<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\department;

class faculty extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    // protected $with = ['sub_events'];
    // protected $withCount = ['sub_events'];

    protected $table = "faculties";
    protected $primaryKey = "faculty_id";

    protected $fillable = [
        'faculty_id',
        'faculty_name',
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    public function departments(){
        return $this->hasMany(department::class,'faculty_id','dapartment_id')
        ->as('faculty_departments');
    }

}
