using System;
using Microsoft.AspNetCore.Mvc;

namespace FantasyHelperAPI.Controllers
{
    // tem asbstract ou não?
    public abstract class BaseController : ControllerBase
    {
        protected ObjectResult Error(Exception ex)
        {
            Console.WriteLine(ex.Message);
            return StatusCode(500, "Internal Server Error");
        }
    }
}