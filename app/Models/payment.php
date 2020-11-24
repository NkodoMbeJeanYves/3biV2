<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class payment extends Model
{
    use SoftDeletes;
    public $timestamps = true;
    protected $table = "payment_orders";
    protected $primaryKey = "payment_orders_id";

    protected $fillable = [
        'deposit_amount',
        'deposit_datetime',
        'remitter_name',
        'control_number',
        'payment_type',	//'cash','transfer'
        'registration_id',
        'registration_type',
    ];

        /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at', 'deleted_at'
    ];


    

    
}
