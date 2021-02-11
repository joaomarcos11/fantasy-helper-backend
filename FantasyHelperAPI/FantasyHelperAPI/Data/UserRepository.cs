using FantasyHelperAPI.Data.Interfaces;
using FantasyHelperAPI.Infra;
using FantasyHelperAPI.Models;

namespace FantasyHelperAPI.Data
{
  public class UserRepository : BaseRepository, IUserRepository
  {
    public UserRepository(Connection conn) : base(conn)
    {
    }

    private enum Procedures
    {
        SP_AlterarStatusUser,
        SP_ConsultarStatsUser,
        SP_ConsultarStatsUserByWeek,
        SP_ConsultarTodosUsernames,
        SP_CriarUser,
        SP_EditarSenharUser,
        SP_EditarUser,
        SP_VerificarUser
    } 
    public int AlterarStatusUser(int idUser)
    {
      throw new System.NotImplementedException();
    }
    public WeekStats ConsultarStatsUser(int idUser)
    {
      throw new System.NotImplementedException();
    }
    public WeekStats ConsultarStatsUserBySeason(int idUser, string season)
    {
      throw new System.NotImplementedException();
    }
    public WeekStats ConsultarStatsUserByWeek(int idUser, string season, int week)
    {
      throw new System.NotImplementedException();
    }
    public User ConsultarTodosUsernames()
    {
      throw new System.NotImplementedException();
    }
    public int CriarUser(User newUser)
    {
      throw new System.NotImplementedException();
    }
    public int EditarSenhaUser(int idUser, string newPassword)
    {
      throw new System.NotImplementedException();
    }
    public int EditarUser(int idUser, User editUser)
    {
      throw new System.NotImplementedException();
    }
    public int VerificarUser(int idUser)
    {
      throw new System.NotImplementedException();
    }
  }
}