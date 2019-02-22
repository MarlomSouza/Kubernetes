using JetBrains.Annotations;
using Kubernetes.Domain;
using Microsoft.EntityFrameworkCore;

namespace Kubernetes
{
    public class TodoContext : DbContext
    {
        public TodoContext(DbContextOptions<TodoContext> options) : base(options)
        {}

         public DbSet<TodoItem> TodoItems { get; set; }
    }
}