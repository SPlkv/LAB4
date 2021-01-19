using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace MyActiveX
{
    
    [ProgId("ClassLibrary.FuncSinX")]
    [Guid("C07F32D7-146C-4866-9002-37B266923E25")]
    [ClassInterface(ClassInterfaceType.AutoDual)]
    [ComVisible(true)]
    public class ClassOne
    {
        [ComVisible(true)]
        public string FuncName()
        {
            return "Sin(X)";
        }
        [ComVisible(true)]
        public double TheFunc(double x)
        {
            return Math.Sin(x);
        }
    }

   
}
