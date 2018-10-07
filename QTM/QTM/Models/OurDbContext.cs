using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace QTM.Models
{
    public class OurDbContext:DbContext
    {
        public DbSet<RegEmp> regemp { get; set; }
    }
}