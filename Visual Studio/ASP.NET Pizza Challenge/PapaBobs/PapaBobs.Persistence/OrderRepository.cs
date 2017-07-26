using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace PapaBobs.Persistence
{
    public class OrderRepository
    {
        public static void CreateOrder(DTO.OrderDTO orderDTO)
        {
            var db = new PapaBobsDbEntities();

            var order = ConvertToEntity(orderDTO);
            db.Orders.Add(order);
            db.SaveChanges();

        }

        private static Order ConvertToEntity(DTO.OrderDTO orderDTO)
        {
            var order = new Order()
            {
                OrderId = orderDTO.OrderId,
                Size = orderDTO.Size,
                Crust = orderDTO.Crust,
                Sausage = orderDTO.Sausage,
                Pepperoni = orderDTO.Pepperoni,
                Onions = orderDTO.Onions,
                GreenPeppers = orderDTO.GreenPeppers,
                Name = orderDTO.Name,
                Address = orderDTO.Address,
                Phone = orderDTO.Phone,
                Zip = orderDTO.Zip,
                TotalCost = orderDTO.TotalCost,
                PaymentType = orderDTO.PaymentType,
                Completed = orderDTO.Completed
            };
            return order;
        }

        public static List<DTO.OrderDTO> GetOrders()
        {
            var db = new PapaBobsDbEntities();
            var orders = db.Orders.Where(p => p.Completed == false).ToList();
            var ordersDTO = convertToDTO(orders);
            return ordersDTO;
        }


        private static List<DTO.OrderDTO> convertToDTO(List<Order> orders) 
        {
            var ordersDTO = new List<DTO.OrderDTO>();

            foreach (var order in orders)
            {
                var orderDTO = new DTO.OrderDTO()
                {
                    OrderId = order.OrderId,
                    Crust = order.Crust,
                    Size = order.Size,
                    Name = order.Name,
                    Address = order.Address,
                    Zip = order.Zip,
                    Phone = order.Phone,
                    Sausage = order.Sausage,
                    Pepperoni = order.Pepperoni,
                    Onions = order.Onions,
                    GreenPeppers = order.GreenPeppers,
                    PaymentType = order.PaymentType,
                    Completed = order.Completed,
                    TotalCost = order.TotalCost
                };
                ordersDTO.Add(orderDTO);
            }
            return ordersDTO;
        }

        public static void CompleteOrder(Guid orderId)
        {
            var db = new PapaBobsDbEntities();
            var order = db.Orders.FirstOrDefault(p => p.OrderId == orderId);
            order.Completed = true;
            db.SaveChanges();
        }
    }
}
