﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ban_Hang_Dien_Tu_CNWeb.Models
{
    [Serializable]
    public class CartItem
    {
       
        public Product Product { get; set; }
        public int Quantity { get; set; }
    }
}