using FantasyHelperAPI.Models;

namespace FantasyHelperAPI.Data.Interfaces
{
    public interface IUserRepository
    {
        int AlterarStatusUser(int idUser);
        WeekStats ConsultarStatsUser(int idUser);
        WeekStats ConsultarStatsUserBySeason(int idUser, string season);
        WeekStats ConsultarStatsUserByWeek(int idUser, string season, int week);
        User ConsultarTodosUsernames();
        int CriarUser(User newUser);
        int EditarSenhaUser(int idUser, string newPassword);
        int EditarUser(int idUser, User editUser);
        int VerificarUser(int idUser);
    }
}