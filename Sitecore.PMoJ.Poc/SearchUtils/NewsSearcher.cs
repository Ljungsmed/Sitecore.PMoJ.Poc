using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Sitecore.ContentSearch;
using Sitecore.ContentSearch.Linq;
using Sitecore.ContentSearch.SearchTypes;

namespace Sitecore.PMoJ.Poc.SearchUtils
{
    public class NewsSearcher
    {
        public List<OrderBySearchResultItem> GetLatestNews(int numberOfResults)
        {
            var index = ContentSearchManager.GetIndex("sitecore_web_index");
            using (var context = index.CreateSearchContext())
            {
                var query = context.GetQueryable<OrderBySearchResultItem>().Where(p => p.Path.StartsWith("/sitecore/content/Home/PublicacoesEditais/News/")).OrderBy(i => i.SortOrder);
                
                var results = query.GetResults();

                IEnumerable<OrderBySearchResultItem> returnResults = results.Hits.Take(numberOfResults).Select(i => i.Document);
                return returnResults.ToList();
            }

            

        }
    }
}