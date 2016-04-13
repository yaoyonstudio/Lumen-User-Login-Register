<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Auth;

class UserController extends Controller
{
    private $salt;
    public function __construct()
    {
        $this->salt="userloginregister";
    }
    public function login(Request $request){
      if ($request->has('username') && $request->has('password')) {
        $user = User:: where("username", "=", $request->input('username'))
                      ->where("password", "=", sha1($this->salt.$request->input('password')))
                      ->first();
        if ($user) {
          $token=str_random(60);
          $user->api_token=$token;
          $user->save();
          return $user->api_token;
        } else {
          return "用户名或密码不正确，登录失败！";
        }
      } else {
        return "登录信息不完整，请输入用户名和密码登录！";
      }
    }
    public function register(Request $request){
      if ($request->has('username') && $request->has('password') && $request->has('email')) {
        $user = new User;
        $user->username=$request->input('username');
        $user->password=sha1($this->salt.$request->input('password'));
        $user->email=$request->input('email');
        $user->api_token=str_random(60);
        if($user->save()){
          return "用户注册成功！";
        } else {
          return "用户注册失败！";
        }
      } else {
        return "请输入完整用户信息！";
      }
    }
    public function info(){
      return Auth::user();
    }
}