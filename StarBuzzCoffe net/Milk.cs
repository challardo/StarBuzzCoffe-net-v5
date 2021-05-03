using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarBuzzCoffe_net
{
    public class Milk:CondimentDecorator
    {

    public Milk(Beverage beverage)
    {
        this.beverage = beverage;
            description = beverage.getDescription() + ", Milk";
        }

    public override String getDescription()
    {
        return beverage.getDescription() + ", Milk";
    }

    public override double cost()
    {
        return beverage.cost() + .10;
    }
}

}
