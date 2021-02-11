using FantasyHelperAPI.Data.Interfaces;
using FantasyHelperAPI.Infra;
using FantasyHelperAPI.Models;

namespace FantasyHelperAPI.Data
{
  public class WeekStatsRepository : BaseRepository, IWeekStatsRepository
  {
    public WeekStatsRepository(Connection conn) : base(conn)
    {
    }
    private enum Procedures
    {
        SP_AlterarStatusWeekStats,
        SP_CriarWeekStats
    }

    public int AlterarStatusWeekStats(int idWeekStats)
    {
      throw new System.NotImplementedException();
    }
    public WeekStats ConsultarStatsSeason(string season)
    {
      throw new System.NotImplementedException();
    }
    public WeekStats ConsultarStatsWeek(string season, int week)
    {
      throw new System.NotImplementedException();
    }
    public int CriarWeekStats(WeekStats newWeekStats)
    {
      throw new System.NotImplementedException();
    }
  }
}