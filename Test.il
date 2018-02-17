.assembly extern mscorlib {}
.assembly extern Model{}

.assembly simpleSum
{
    .ver 1:0:1:0
}
.module simpleSum.exe

.method static void main() cil managed
{
    .maxstack 1
    .entrypoint
    
	.locals init (
		[0] class [Model]Model.Customer cu,
		[1] int32 x,
		[2] string name,
		[3] int32 quantity
		)
	newobj instance void [Model]Model.Customer::.ctor()
	
	stloc.0
	
	ldstr "hola Mundo"
	stloc.0

	ldloc.0
	callvirt instance int32 [Model]Model.Customer::getSaldo()
	stloc.1
	
	ldc.i4 1
	ldc.i4 4
	/*
	add
	stloc quantity
	*/
	
	ldloc.1
	call void [mscorlib]System.Console::WriteLine (int32)
	
	ldstr "Hello World"
	stloc.0
	
	ldloc.0
	call void [mscorlib]System.Console::WriteLine (string)
	
	ldloc.0
	callvirt instance string [Model]Model.Customer::getName()
	stloc.2
	
	ldstr "Nombre: "
	call void [mscorlib]System.Console::Write (string)

	ldloc.2
	call void [mscorlib]System.Console::WriteLine (string)
	
	ret
}

.method public int32 doSum(int32,int32) cil managed
{
	.maxstack 1
	
	ldarg.0
	ldarg.1
	add
	
	ret
}

.method public void printNumber(int32)
{
	.maxstack 1
	ldarg.0
	call void [mscorlib]System.Console::WriteLine(int32)
	
	ldstr "Bye module"
	call void [mscorlib]System.Console::WriteLine(string)
}