<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class AuthToken
{
	public function handle($request, Closure $next)
	{
	    if(Auth::check()){
	        return $next($request);
	    }else{
	        abort(401);
	    }
	}
}
