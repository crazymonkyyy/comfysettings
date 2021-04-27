void main(){                           //example.mix
	int a,b,c;                          //a=1;               
	int[5] array;                       //b=2;              
	float f;                            //c=3;              
	string mystring;                    //mystring="imcute";
	import setting;                     //array=[1,2,3,4,5];
	import std;                         //f=3.14;           
	void error(){
		"config didnt work, made one for you at example.conf".writeln;
	}
	mixin setup!("example",error);
	reload!"example";                    //dmd -J=. -i -run example.d
	writeln("a: ",a," b: ", b," c: ",c); //a: 1 b: 2 c: 3            
	writeln("array: ",array);            //array: [1, 2, 3, 4, 5]    
	writeln("floats: ",f);               //floats: 3.14              
	writeln("strings: ", mystring);      //strings: imcute           
}
