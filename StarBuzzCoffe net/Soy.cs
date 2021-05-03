using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarBuzzCoffe_net
{
    public class Soy: CondimentDecorator
    {

    public Soy(Beverage beverage)
    {
        this.beverage = beverage;
            description = beverage.getDescription() + ", Soy";
        }

    public override String getDescription()
    {
        return beverage.getDescription() + ", Soy";
    }

    public override double cost()
    {
        double cost = beverage.cost();
        if (beverage.getSize() == Size.TALL)
        {
            cost += .10;
        }
        else if (beverage.getSize() == Size.GRANDE)
        {
            cost += .15;
        }
        else if (beverage.getSize() == Size.VENTI)
        {
            cost += .20;
        }
        return cost;
    }
}
}
