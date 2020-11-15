<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\channel;

class department extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $incrementing = "false";
    protected $keyType = "string";

    // protected $with = ['sub_events'];
    // protected $withCount = ['sub_events'];

    protected $table = "departments";
    protected $primaryKey = "department_id";

    protected $fillable = [
        'department_id',
        'department_name',
        'school_id',
        'faculty_id'
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];

    public function channels(){
        return $this->belongsToMany(channel::class,'department_channels','department_id','channel_id')
        ->as('department_channels');
    }

}
