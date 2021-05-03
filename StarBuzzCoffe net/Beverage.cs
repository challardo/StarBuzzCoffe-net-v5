using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarBuzzCoffe_net
{
    public abstract class Beverage
    {
        public enum Size { TALL, GRANDE, VENTI };
        Size size = Size.TALL;
        public string description = "Unknown Beverage";

        public string getDescription()
        {
            return description;
        }

        public void setSize(Size size)
        {
            this.size = size;
        }

        public Size getSize()
        {
            return this.size;
        }

        public abstract double cost();
    }
}
