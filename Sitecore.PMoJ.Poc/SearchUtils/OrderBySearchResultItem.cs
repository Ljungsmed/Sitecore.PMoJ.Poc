using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Sitecore.ContentSearch;
using Sitecore.ContentSearch.SearchTypes;

namespace Sitecore.PMoJ.Poc.SearchUtils
{
    public class OrderBySearchResultItem : SearchResultItem
    {
        //In the <exclude hint="list:ExcludeField"> 
        //uncomment <__SortOrder>{BA3F86A2-4A1C-4D78-B63D-91C2779C1B5E}</__SortOrder> 
        //so the sortorder field gets indexed

        [IndexField("__sortorder")]
        public int SortOrder { get; set; }
    }
}