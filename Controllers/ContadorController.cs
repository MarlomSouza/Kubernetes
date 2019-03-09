using System;
using kubernetes.Domain;
using Microsoft.AspNetCore.Mvc;

namespace kubernetes.Controllers
{
    [Route("api/[controller]")]
    public class ContadorController : Controller
    {
        private static Contador _CONTADOR = new Contador();

        [HttpGet]
        public object Get()
        {
            lock (_CONTADOR)
            {
                _CONTADOR.Incrementar();

                return new
                {
                    _CONTADOR.ValorAtual,
                    Environment.MachineName,
                    Sistema = Environment.OSVersion.VersionString
                };
            }
        }
    }
}