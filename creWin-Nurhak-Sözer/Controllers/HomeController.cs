using creWin_Nurhak_Sözer.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;

namespace creWin_Nurhak_Sözer.Controllers
{
    public class HomeController : Controller
    {
        private readonly Crewin_InternContext _context;
       
        public HomeController(Crewin_InternContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            
            return View(await _context.Categories.ToListAsync());
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Categories()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
