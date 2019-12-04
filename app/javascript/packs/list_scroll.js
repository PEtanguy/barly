const scrollMenu = () => {
  const menuItems = document.querySelectorAll('.menu-category');
  const container = document.querySelector('.drink-buttons-arthur')
  menuItems.forEach((item) => {
    item.addEventListener('click', (event) => {
      let menuCategory = document.getElementById(item.dataset.id);
      let activeItem = container.querySelector('.active');
      let scrollBy = activeItem.offsetLeft;
      menuItems.forEach(item => item.classList.remove('active'));
      item.classList.add('active');
      container.scrollBy(item.offsetLeft - scrollBy, 0);
      // container.scrollBy({
      //   left: item.offsetLeft - scrollBy,
      //   behavior: 'smooth'
      // });
      if (menuCategory) {
        menuCategory.scrollIntoView({behavior: "smooth", block: "start", inline: "start"});
      }
    });
  });
  const mainContainer = document.querySelector('.mhresp');
  let menuContainers = document.querySelectorAll('.menu-item-container');
  mainContainer.addEventListener('scroll', (event) => {
    menuContainers.forEach((item) => {
      if (((item.offsetTop - mainContainer.scrollTop) < window.innerHeight) && ((item.offsetTop - mainContainer.scrollTop) > mainContainer.offsetTop)) {
        let activeItem = container.querySelector('.active');
        let scrollBy = activeItem.offsetLeft;
        menuItems.forEach(menuItem => menuItem.classList.remove('active'));
        let topMenuItem = document.querySelector(`[data-id="${item.id}"]`);
        topMenuItem.classList.add('active');
        container.scrollBy(topMenuItem.offsetLeft - scrollBy, 0);
      }
    })
  });
}

scrollMenu();
