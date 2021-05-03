using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarBuzzCoffe_net
{
    public class Whip:CondimentDecorator
    {

    public Whip(Beverage beverage)
    {
        this.beverage = beverage;
            description = beverage.getDescription() + ", Whip";
        }

    public override string getDescription()
    {
        return beverage.getDescription() + ", Whip";
    }

    public override double cost()
    {
            return beverage.cost() +.10;
    }
}
}
