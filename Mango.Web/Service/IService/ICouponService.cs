using Super.Web.Models;

namespace Super.Web.Service.IService
{
    public interface ICouponService
    {
        Task<ResponseDto?> GetCouponByIdAsync(int id);
        Task<ResponseDto?> DeleteCouponAsync(int id);
        Task<ResponseDto?> GetAllCouponAsync();
        Task<ResponseDto?> CreateCouponAsync(CouponDto couponDto);
        Task<ResponseDto?> UpdateCouponAsync(CouponDto couponDto);
    }
}
