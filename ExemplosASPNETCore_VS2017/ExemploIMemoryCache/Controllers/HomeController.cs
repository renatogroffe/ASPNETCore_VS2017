using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Memory;

namespace ExemploIMemoryCache.Controllers
{
    public class HomeController : Controller
    {
        private IMemoryCache _cache;

        public HomeController(IMemoryCache cache)
        {
            _cache = cache;
        }

        public IActionResult Index()
        {
            DateTime testeCache = _cache.GetOrCreate<DateTime>(
                "TesteCache", context =>
                {
                    context.SetAbsoluteExpiration(TimeSpan.FromSeconds(20));
                    context.SetPriority(CacheItemPriority.High);
                    return DateTime.Now;
                });

            ViewBag.TesteCache = testeCache;

            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
