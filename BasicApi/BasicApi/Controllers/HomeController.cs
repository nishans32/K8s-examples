using Microsoft.AspNetCore.Mvc;

namespace BasicApi.Controllers
{
    public class HomeController : Controller
    {
        public HomeController()
        {

        }

        [HttpGet]
        [Route("home")]
        public async Task<IActionResult> GetGreeting() 
        {
            return await Task.FromResult(Ok("Hi!"));
        }
    }
}
