let cart = JSON.parse(localStorage.getItem('cart')) || [];
let cno = parseInt(localStorage.getItem('cno')) || 0;
let bill = parseInt(localStorage.getItem('bill')) || 0;

export function cartAdd(price, itemName, brand, imgSrc) {
    cno++;
    bill+=price;
    brand = "size : " + prompt("What size(XS/S/M/L/XL)");
    cart.push({ price, itemName, brand, imgSrc });
    console.log(cart[0]);
    document.getElementById('quantity').innerText = cno;
    alert("Added To Cart");
    localStorage.setItem('cart', JSON.stringify(cart));
    localStorage.setItem('cno', cno);
    localStorage.setItem('bill',bill);
}
  
export function cartRemove(itemName,price) {

    bill-=price;
    console.log(cart.filter(item => item.itemName !== itemName));
    cart = cart.filter(item => item.itemName !== itemName);
    document.getElementById('quantity').innerText = cno = cart.length;
    document.getElementById('bill').innerHTML = bill + "₹"
    localStorage.setItem('cno', cno);
    localStorage.setItem('bill',bill);
    const itemElement = document.querySelector(`[data-name="${itemName}"]`);
    if (itemElement) {
      itemElement.remove();
    }
    updateCartDisplay();
}
 
export function updateCartDisplay() {
    const productRow = document.querySelector('.cart');
    productRow.innerHTML = '';
    if (cart.length === 0) {
      const noElements = document.createElement('h2');
      noElements.textContent = "cart is empty";
      productRow.appendChild(noElements);
    } else {
      cart.forEach(item => {
        const productCard = createProductCard(item, 'cart');
        productRow.appendChild(productCard);
      });
    }
}

export {cart,cno,bill};
