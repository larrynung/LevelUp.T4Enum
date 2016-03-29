# LevelUp.T4Enum
Generate enum helper class and extension method to avoid enum's boxing/unboxing  

Step  
1. Add LevelUp.T4Enum from nuget  
2. Run T4 template to generate enum helper file  
3. Use enum helper to do enum operation  

    using System;
    using T4Enum;
    using T4Enum.Extensions;
    
    namespace ConsoleApplication7
    {
        enum Permission
        {
            Function1,
            Function2,
            Function3
        }
        class Program
        {
            static void Main(string[] args)
            {
                Console.WriteLine(Enums.Permission.Function1.Name);
                Console.WriteLine((int)Enums.Permission.Function1.Value);
    
                Console.WriteLine(Enums.Permission[Permission.Function2].Name);
                Console.WriteLine((int)Enums.Permission[Permission.Function2].Value);
    
                Console.WriteLine(Enums.Permission.GetName(Permission.Function3));
                Console.WriteLine(Permission.Function3.GetName());
    
                foreach (var item in Enums.Permission)
                {
                    Console.WriteLine(item.Name);
                    Console.WriteLine((int)item.Value);
                }
    
                foreach (var name in Enums.Permission.GetNames())
                {
                    Console.WriteLine(name);
                }
    
                foreach (var value in Enums.Permission.GetValues())
                {
                    Console.WriteLine((int)value);
                }
            }
        }
    
    }

Link
----
* [T4 Template - T4Enum 1.0 - Level Up](http://larrynung.github.io/2016/03/22/t4-template-t4enum-1-dot-0/)
* [NuGet Gallery | LevelUp.T4Enum](https://www.nuget.org/packages/LevelUp.T4Enum/)
