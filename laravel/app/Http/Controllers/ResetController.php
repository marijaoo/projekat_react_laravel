<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use  App\Http\Requests\ResetRequest;
use  App\Models\User;
use Illuminate\Support\Facades\DB;
use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Mail\ForgetMail;

class ResetController extends Controller
{
    public function ResetPassword(ResetRequest $request)
    {
        $email = $request->email;
        $token = $request->token;
        $password = Hash::make($request->password);

        $emailcheck = DB::table('password_resets')->where('email', $email)->first();
        $pincheck = DB::table('password_resets')->where('token', $token)->first();

        if (!$emailcheck) {
            return response([
                'message' => 'Email is not found in the database!'
            ], 401); //statis code 401
        }

        if (!$pincheck) {
            return response([
                'message' => 'Pin code invalid!'
            ], 401); //statis code 401
        }

        DB::table('users')->where('email', $email)->update(['password' => $password]);
        DB::table('password_resets')->where('email', $email)->delete();
        return response([
            'message' => 'Password changed successfully'
        ], 200); //status code 200
    }
}
