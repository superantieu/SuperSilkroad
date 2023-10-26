using Super.Services.ShoppingCartAPI.Models.Dto;

namespace Super.Services.ShoppingCartAPI.Service.IService
{
    public interface IProductService
    {
        Task<IEnumerable<ProductDto>> GetProducts();
    }
}
