package global._;

typedef CurriedFunction5<T1, T2, T3, T4, T5, R> = {
	@:overload(function(t1:T1):CurriedFunction4<T2, T3, T4, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2):CurriedFunction4<T1, T3, T4, T5, R> { })
	@:overload(function(t1:T1, t2:T2):CurriedFunction3<T3, T4, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3):CurriedFunction4<T1, T2, T4, T5, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3):CurriedFunction3<T2, T4, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3):CurriedFunction3<T1, T4, T5, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3):CurriedFunction2<T4, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:LoDashStatic, t4:T4):CurriedFunction4<T1, T2, T3, T5, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic, t4:T4):CurriedFunction3<T2, T3, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:LoDashStatic, t4:T4):CurriedFunction3<T1, T3, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3, t4:T4):CurriedFunction3<T1, T2, T5, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic, t4:T4):CurriedFunction2<T3, T5, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3, t4:T4):CurriedFunction2<T2, T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3, t4:T4):CurriedFunction2<T1, T5, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3, t4:T4):CurriedFunction1<T5, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:LoDashStatic, t4:LoDashStatic, t5:T5):CurriedFunction4<T1, T2, T3, T4, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic, t4:LoDashStatic, t5:T5):CurriedFunction3<T2, T3, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:LoDashStatic, t4:LoDashStatic, t5:T5):CurriedFunction3<T1, T3, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3, t4:LoDashStatic, t5:T5):CurriedFunction3<T1, T2, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:LoDashStatic, t4:T4, t5:T5):CurriedFunction3<T1, T2, T3, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic, t4:LoDashStatic, t5:T5):CurriedFunction2<T3, T4, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3, t4:LoDashStatic, t5:T5):CurriedFunction2<T2, T4, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:LoDashStatic, t4:T4, t5:T5):CurriedFunction2<T2, T3, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3, t4:LoDashStatic, t5:T5):CurriedFunction2<T1, T4, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:LoDashStatic, t4:T4, t5:T5):CurriedFunction2<T1, T3, R> { })
	@:overload(function(t1:LoDashStatic, t2:LoDashStatic, t3:T3, t4:T4, t5:T5):CurriedFunction2<T1, T2, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3, t4:LoDashStatic, t5:T5):CurriedFunction1<T4, R> { })
	@:overload(function(t1:T1, t2:T2, t3:LoDashStatic, t4:T4, t5:T5):CurriedFunction1<T3, R> { })
	@:overload(function(t1:T1, t2:LoDashStatic, t3:T3, t4:T4, t5:T5):CurriedFunction1<T2, R> { })
	@:overload(function(t1:LoDashStatic, t2:T2, t3:T3, t4:T4, t5:T5):CurriedFunction1<T1, R> { })
	@:overload(function(t1:T1, t2:T2, t3:T3, t4:T4, t5:T5):R { })
	@:selfCall
	function call():CurriedFunction5<T1, T2, T3, T4, T5, R>;
};