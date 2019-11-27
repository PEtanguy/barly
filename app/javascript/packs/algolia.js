const search = () => {
  var client = algoliasearch('V3KWOAW2U2', '726c5659af9294aca836f385f121f002');
  var index = client.initIndex('Bar');
  const input = document.querySelector("#search_query");
  input.addEventListener("keyup", (event) => {
    let keyword = input.value;
    console.log(keyword);
    index.search(keyword, { hitsPerPage: 10, page: 0 })
    .then(function searchDone(content) {
      console.log(content)
    })
    .catch(function searchFailure(err) {
      console.error(err);
    });
  });
}

search();
