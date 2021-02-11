using FantasyHelperAPI.Models;

namespace FantasyHelperAPI.Data.Interfaces
{
    public interface IWeekStatsRepository
    {
        int AlterarStatusWeekStats(int idWeekStats);
        WeekStats ConsultarStatsSeason(string season);
        WeekStats ConsultarStatsWeek(string season, int week);
        int CriarWeekStats(WeekStats newWeekStats);
    }
}