namespace Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts
{
    using System;
    using Sitecore.Collections;
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.Data.Items;
    using System.Linq;
    using Sitecore.PMoJ.Poc.SearchUtils;
using System.Web.UI.WebControls;

    public partial class TopMenu : System.Web.UI.UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            Item homeItem = Sitecore.Context.Database.GetItem(Sitecore.Context.Site.StartPath);
                        
            var index = ContentSearchManager.GetIndex("sitecore_" + Sitecore.Context.Database.Name + "_index");
            OrderBySearchResultItem[] results;
            using (var searchContext = index.CreateSearchContext())
            {
                results = searchContext.GetQueryable<OrderBySearchResultItem>()
                                                     .Where(
                                                         x =>
                                                         x.Parent == homeItem.ID)
                                                     .Where(x => x.TemplateName == "section")
                                                     .OrderBy(x => x.SortOrder)
                                                     .ToArray<OrderBySearchResultItem>();
            }

            ItemList sectionItemLIst = new ItemList();

            foreach (var result in results)
            {
                sectionItemLIst.Add(Sitecore.Context.Database.GetItem(result.ItemId)); 
            }

            //return results.Any() ? results : new SearchResultItem[0];

            RepeaterTopMenu.DataSource = sectionItemLIst;
            RepeaterTopMenu.DataBind();
        }


        protected void RepeaterTopMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater childRepeater = (Repeater)e.Item.FindControl("RepeaterSubMenu");
                Item repeaterItem = e.Item.DataItem as Item;

                childRepeater.DataSource = repeaterItem.Children;
                childRepeater.DataBind();
            }
        }
    }
}