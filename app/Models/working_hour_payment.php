<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\profile;

class working_hour_payment extends Model
{
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];

    // protected $with = ['beneficiary'];

    protected $table = "working_hours_paid";
    protected $primaryKey = "working_hour_paid_id";

    protected $fillable = [
        'working_hour_paid',
        'unit_price',
        'payment_date',
        'comment',
        'user_id',
        'lecturer_id'
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];


    public function beneficiary(){
        return $this->BelongsTo(profile::class, 'profile_id', 'lecturer_id')->as('beneficiary');
    }

}
