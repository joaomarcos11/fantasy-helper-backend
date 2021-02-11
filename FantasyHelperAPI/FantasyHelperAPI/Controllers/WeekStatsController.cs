using FantasyHelperAPI.Data.Interfaces;
using FantasyHelperAPI.Models;
using Microsoft.AspNetCore.Mvc;

namespace FantasyHelperAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class WeekStatsController : BaseController
    {
        private readonly IWeekStatsRepository _repo;

        public WeekStatsController(IWeekStatsRepository repo)
        {
            _repo = repo;
        }

        [HttpPatch("{idStats}/status")]
        public IActionResult AlterarStatusWeekStats(int idStats)
        {
            var result = _repo.AlterarStatusWeekStats(idStats);

            if(result == 0)
                return NotFound("WeekStats não encontrado");
            
            return Ok("Status do WeekStats alterado com sucesso");
        }

        [HttpGet("{season}/season")]
        public IActionResult ConsultarStatsSeason(string season)
        {
            var result = _repo.ConsultarStatsSeason(season);

            return Ok(result);
        }

        [HttpGet("{season}/season/{week}/week")]
        public IActionResult ConsultarStatsWeek(string season, int week)
        {
            var result = _repo.ConsultarStatsWeek(season, week);

            return Ok(result);
        }

        [HttpPost("new")]
        public IActionResult CriarWeekStats(WeekStats newWeekStats)
        {
            var result = _repo.CriarWeekStats(newWeekStats);

            return Ok(result);
        }

    }
}