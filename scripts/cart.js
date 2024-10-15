let storedCart = JSON.parse(localStorage.getItem('cart')) || [];
let cart = storedCart.map(item => new Product(item.price, item.name, item.size));
let cno = parseInt(localStorage.getItem('cno')) || 0;
let bill = parseInt(localStorage.getItem('bill')) || 0;

export { cart, cno ,bill } ;
