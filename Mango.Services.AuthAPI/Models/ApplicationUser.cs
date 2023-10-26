using Microsoft.AspNetCore.Identity;

namespace Super.Services.AuthAPI.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Name { get; set; }
    }
}
