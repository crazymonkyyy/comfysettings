void main(){
	int a,b,c;
	int[5] array;
	float f;
	string mystring;
	import setting;
	import std;
	void error(){
		"config didnt work, made one for you at example.conf".writeln;
	}
	mixin setup!("example",error);
	reload!"example";
	writeln("a: ",a," b: ", b," c: ",c);
	writeln("array: ",array);
	writeln("floats: ",f);
	writeln("strings: ", mystring);
}