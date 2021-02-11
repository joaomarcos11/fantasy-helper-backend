using System;

namespace FantasyHelperAPI.Models
{
    public class WeekStats
    {
        public short IdWeekStats { get; set; }
        public string Season { get; set; }
        public byte WeekNumber { get; set; }
        public byte Games { get; set; }
        public short Fga { get; set; }
        public short Fgm { get; set; }
        public short Fta { get; set; }
        public short Ftm { get; set; }
        public byte ThreePoints { get; set; }
        public short Points { get; set; }
        public short Rebounds { get; set; }
        public short Assists { get; set; }
        public byte Steals { get; set; }
        public byte Blocks { get; set; }
        public byte Turnovers { get; set; }
        public DateTime DateCreated { get; set; } = DateTime.Now;
        public bool IsActive { get; set; }
        public short IdUser { get; set; }
        public User User { get; set; }

        // criar construtor que instancie um User
    }
}