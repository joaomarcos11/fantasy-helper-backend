using System.Collections.Generic;

namespace FantasyHelperAPI.Models
{
    public class User
    {
        public short IdUser { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string Email { get; set; }
        public string UserPassword { get; set; }
        public string Avatar { get; set; } = null;
        public bool IsActive { get; set; } = true;
        public bool IsAdmin { get; set; } = false;
        public bool IsVerified { get; set; } = false;
        public List<WeekStats> WeekStatsList { get; set; }
    }
}