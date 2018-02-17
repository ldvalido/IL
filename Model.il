.assembly extern mscorlib {}

.assembly Model
{
	.ver 1:0:1:0
}

.namespace Model
{
	.class public Customer extends [mscorlib]System.Object
	{
		.method public specialname rtspecialname instance void .ctor() cil managed
		{
			.maxstack 1
			ret
		}
		
		.method public int32 getSaldo()
		{
			.maxstack 1
			ldc.i4 22
			ret
		}
		
		.method public string getName()
		{
			.maxstack 1
			ldstr "Sancor"
			ret
		}
	}
	.class public Currency extends [mscorlib]System.Object
	{
		.method public int32 getRate()
		{
			.maxstack 1
			ldc.i4 10
			ret
		}
	}
}