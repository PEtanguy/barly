const search = () => {
  var client = algoliasearch('V3KWOAW2U2', '726c5659af9294aca836f385f121f002');
  var index = client.initIndex('Bar');
  const input = document.querySelector("#search_query");
  const results = document.querySelector("#results");
  input.addEventListener("keyup", (event) => {
    let keyword = input.value;
    console.log(keyword);
    index.search(keyword, { hitsPerPage: 3, page: 0 })
    .then(function searchDone(content) {
      console.log(content)
      results.innerHTML = '';
      content.hits.forEach((bar) => {
        // const list = `<%= link_to "${bar.name}", "/map_path" %>`;
        const list = `<li class="list-inline search-results"><a href="bars/${bar.id}/menu_items">${bar.name}</a></li>`;
        results.insertAdjacentHTML("beforeend", list);
      });
    })
    .catch(function searchFailure(err) {
      console.error(err);
    });
  });
}

search();
