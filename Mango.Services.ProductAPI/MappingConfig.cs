using AutoMapper;
using Super.Services.ProductAPI.Models;
using Super.Services.ProductAPI.Models.Dto;

namespace Super.Services.ProductAPI
{
    public class MappingConfig
    {
        public static MapperConfiguration RegisterMaps()
        {
            var mappingConfig = new MapperConfiguration(config =>
            {
                config.CreateMap<ProductDto, Product>().ReverseMap();
            });
            return mappingConfig;
        }
    }
}
