using System.Web.UI.WebControls;
using Sitecore.Data;
using Sitecore.Links;

namespace Sitecore.PMoJ.Poc.layouts.PMoJ.Sublayouts
{
    using System;
    using Sitecore.ContentSearch.Linq;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.ContentSearch;
    using System.Linq;
    using Sitecore.ContentSearch.Linq.Utilities;
    using Sitecore.Web.UI.WebControls;

    public partial class SearchResults : System.Web.UI.UserControl
    {
        private string q = string.Empty;
        private string _selectedFacets = string.Empty;
        private void Page_Load(object sender, EventArgs e)
        {
            q = Request.QueryString["q"];
            _selectedFacets = Request.QueryString["facets"] ?? string.Empty;

            Search();
            // Put user code to initialize the page here
        }


        public void Search()
        {
            var index = ContentSearchManager.GetIndex("sitecore_web_index");
            using (var context = index.CreateSearchContext())
            {




                var predicate = PredicateBuilder.True<SearchResultItem>();
                // predicate = predicate.And(p => p.Path.StartsWith("/sitecore/content/Home/News"));

                foreach (var t in q.Split(' '))
                {
                    var tempTerm = t;
                    predicate = predicate.And(p => p.Content.Contains(tempTerm));
                }


                if (!string.IsNullOrEmpty(_selectedFacets))
                {
                    foreach (var f in _selectedFacets.Split(','))
                    {
                        if (!string.IsNullOrEmpty(f))
                        {
                            var facetId = f;
                            predicate = predicate.And(p => p.Semantics.Contains(Data.ID.Parse(facetId)));
                        }

                    }
                }




                var query = context.GetQueryable<SearchResultItem>().Where(predicate).Where(p => p.Path.StartsWith("/sitecore/content/Home/News"));
                var results = query.GetResults();


                var totalResults = results.TotalSearchResults;
                var topTenResults = results.Hits.Take(10);

                /*  foreach (var result in results.Hits.Select(x => x.Document))
                  {
                      Response.Write(result.Name + "<br/>");
                  }
                  */
                rpResults.DataSource = results.Hits.Select(x => x.Document);
                rpResults.DataBind();



                var facetResults = query.FacetOn(d => d.Semantics);
                var getFacets = facetResults.GetFacets();

                rpFacets.DataSource = getFacets.Categories.SelectMany(i => i.Values).OrderBy(i => i.Name);
                rpFacets.DataBind();

                /*
                foreach (var category in facets.Categories)
                {
                    Console.WriteLine(category.Name);
                    foreach (var facetValue in category.Values)
                    {
                        Response.Write(string.Format("{0}: {1}", Sitecore.Context.Database.GetItem(Guid.Parse(facetValue.Name).ToString().ToUpper()).Name, facetValue.AggregateCount) +"<br/>");
                    }
                }
                 * 
                 * */

            }

        }

        protected void rpResults_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                SearchResultItem searchItem = (SearchResultItem)e.Item.DataItem;

                Text heading = (Text)e.Item.FindControl("heading");
                heading.Item = Sitecore.Context.Database.GetItem(searchItem.ItemId);


                Text content = (Text)e.Item.FindControl("content");
                content.Item = Sitecore.Context.Database.GetItem(searchItem.ItemId);
            }
        }


        protected void rpFacets_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                FacetValue facetValue = (FacetValue)e.Item.DataItem;

                var item = Sitecore.Context.Database.GetItem(Guid.Parse(facetValue.Name).ToString().ToUpper());


                HyperLink link = (HyperLink)e.Item.FindControl("link");
                link.Text = item.Name;
                
                var query = "?q=" + q + "&facets=";
                if (_selectedFacets.Contains(facetValue.Name))
                {
                    query += RemoveFacetFromQuery(facetValue.Name);
                    link.CssClass = "green";
                }
                else
                {
                    query += AddFacetToQuery(facetValue.Name);
                    link.CssClass = "";
                }


                link.NavigateUrl = LinkManager.GetItemUrl(Sitecore.Context.Item) + query;

                Literal number = (Literal)e.Item.FindControl("number");
                number.Text = facetValue.AggregateCount.ToString();

            }


            

        }

        private string AddFacetToQuery(string facet)
        {
            var retval = _selectedFacets;
            if (!string.IsNullOrEmpty(_selectedFacets))
            {
                retval = retval + ",";
            }

            retval += facet;

            return retval;
        }


        private string RemoveFacetFromQuery(string facet)
        {
            var retval = string.Empty;

            var test = _selectedFacets.Split(',').Where(s => !s.Contains(facet)).Where(s => !string.IsNullOrEmpty(s)).ToArray();

            return string.Join(",", test);


            //foreach (var facetId in _selectedFacets.Split(",".ToCharArray()))
            //{
            //    if(!string.IsNullOrEmpty(facetId))
            //    retval += 
            //}

            //if (!string.IsNullOrEmpty(_selectedFacets))
            //{
            //    retval = retval + ",";
            //}

            //retval += facet;

            //return retval;
        }



    }
}