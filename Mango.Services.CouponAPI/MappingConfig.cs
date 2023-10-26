using AutoMapper;
using Super.Services.CouponAPI.Models;
using Super.Services.CouponAPI.Models.Dto;

namespace Super.Services.CouponAPI
{
    public class MappingConfig
    {
        public static MapperConfiguration RegisterMaps()
        {
            var mappingconfig = new MapperConfiguration(config =>
            {
                config.CreateMap<CouponDto, Coupon>();
                config.CreateMap<Coupon, CouponDto>();
            });
            return mappingconfig;
        }
    }
}
