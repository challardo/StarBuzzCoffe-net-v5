using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarBuzzCoffe_net
{
    public class Mocha:CondimentDecorator
    {

    public Mocha(Beverage beverage)
    {
        this.beverage = beverage;
           description= beverage.getDescription() + ", Mocha";
           
        }

    public override String getDescription()
    {
        return beverage.getDescription() + ", Mocha";
        }

    public override double cost()
    {
        return beverage.cost() + .20;
    }
}

}
