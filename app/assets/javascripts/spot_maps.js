function MapSelect(){
  const page = document.body.dataset.page;

  if(page === "index"){
    // 「検索」ページ
    initMapForIndex();

  } else if(page === "new"){
    // 「新規登録」ページ
    initMapForNew();

  } else if(page === "show"){
    // 「新規登録」ページ
    initMapForNew();
  } 
}

function initMapForIndex(){

}


