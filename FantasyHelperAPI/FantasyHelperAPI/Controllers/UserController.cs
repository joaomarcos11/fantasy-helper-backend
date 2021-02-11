using FantasyHelperAPI.Data.Interfaces;
using FantasyHelperAPI.Infra;
using FantasyHelperAPI.Models;
using Microsoft.AspNetCore.Mvc;

namespace FantasyHelperAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : BaseController
    {
        public readonly IUserRepository _repo;
        
        public UserController(IUserRepository repo)
        {
            _repo = repo;
        }

        [HttpPatch("{idUser}/status")]
        public IActionResult AlterarStatusUser(int idUser)
        {
            var result = _repo.AlterarStatusUser(idUser);
            
            if(result == 0)
                return NotFound("Usuário não encontrado");
            

            return Ok("Status do usuário alterado com sucesso");
        }

        [HttpGet("{idUser}/stats")]
        public IActionResult ConsultarStatsUser(int idUser)
        {
            var result = _repo.ConsultarStatsUser(idUser);

            if(result.IdUser == 0)
                return NotFound("Usuário não encontrado");
            
            return Ok(result);
        }

        [HttpGet("{idUser}/stats/{season}/season")]
        public IActionResult ConsultarStatsUserBySeason(int idUser, string season)
        {
            var result = _repo.ConsultarStatsUserBySeason(idUser, season);

            if(result.IdUser == 0)
                return NotFound("Usuário não encontrado");

            if(result.Season == "")
                return NotFound("Temporada não encontrada");
            
            return Ok(result);
        }

        [HttpGet("{idUser}/stats/{season}/season/{week}/week")]
        public IActionResult ConsultarStatsUserByWeek(int idUser, string season, int week)
        {
            var result = _repo.ConsultarStatsUserByWeek(idUser, season, week);

            if(result.IdUser == 0)
                return NotFound("Usuário não encontrado");

            if(result.Season == "")
                return NotFound("Temporada não encontrada");
            
            if(result.WeekNumber == 0)
                return NotFound("Semana não encontrada");

            return Ok(result);
        }

        [HttpGet("{idUser}/allusernames")]
        public IActionResult ConsultarTodosUsernames()
        {
            var result = _repo.ConsultarTodosUsernames();

            return Ok(result);
        }

        [HttpPost("new")]
        public IActionResult CriarUser(User newUser)
        {
            var result = _repo.CriarUser(newUser);

            return Ok(result);
        }

        [HttpPatch("{idUser}/newpassword")]
        public IActionResult EditarSenhaUser(int idUser, User newUserPassword)
        {
            string hashPassword = Cryptography.GenerateHash(newUserPassword.UserPassword);

            var result = _repo.EditarSenhaUser(idUser, hashPassword);

            if(result == 0)
                return NotFound("Usuário não encontrado");

            return Ok(result);
        }

        [HttpPatch("{idUser}/edit")]
        public IActionResult EditarUser(int idUser, User editUser)
        {
            var result = _repo.EditarUser(idUser, editUser);

            if(result == 0)
                return NotFound("Usuário não encontrado");

            return Ok(result);
        }

        [HttpPatch("{idUser}/verify")]
        public IActionResult VerificarUser(int idUser)
        {
            var result = _repo.VerificarUser(idUser);

            if(result == 0)
                return NotFound("Usuário não encontrado");

            return Ok(result);
        }

    }
}