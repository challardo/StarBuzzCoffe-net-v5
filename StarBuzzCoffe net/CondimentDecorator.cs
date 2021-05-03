using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarBuzzCoffe_net
{
    public abstract class CondimentDecorator: Beverage
    {

    public Beverage beverage;
     
    public abstract string getDescription();

        public Size getSize()
        {
            return beverage.getSize();
        }
    }  
}
