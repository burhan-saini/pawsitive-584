<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Uitm</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:#f4f4f4;
}

/* Header */
.header{
    background:#5a2d82;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:20px 50px;
}

.logo{
    color:white;
    font-size:28px;
    font-weight:bold;
}

.nav-links a{
    color:white;
    text-decoration:none;
    margin:0 20px;
    font-weight:bold;
}

.nav-links a:hover{
    color:#ddd;
}

/* Search Bar */

.search-container{
    background:white;
    padding:20px;
    text-align:center;
}

.search-container input{
    width:50%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:25px;
}

.search-container button{
    padding:12px 20px;
    background:#5a2d82;
    color:white;
    border:none;
    border-radius:25px;
    cursor:pointer;
}

/* Category */

.categories{
    display:flex;
    justify-content:center;
    gap:15px;
    margin:20px;
}

.categories button{
    padding:10px 20px;
    border:none;
    background:#5a2d82;
    color:white;
    border-radius:20px;
    cursor:pointer;
}

.categories button:hover{
    background:#442061;
}

/* Sort */

.sort-section{
    width:90%;
    margin:auto;
    margin-bottom:20px;
}

.sort-section select{
    padding:10px;
}

/* Product Grid */

.products{
    width:90%;
    margin:auto;

    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(220px,1fr));
    gap:25px;
}

.card{
    background:white;
    border-radius:10px;
    overflow:hidden;
    box-shadow:0 2px 10px rgba(0,0,0,0.1);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-5px);
}

.card img{
    width:100%;
    height:200px;
    object-fit:cover;
}

.card-body{
    padding:15px;
    text-align:center;
}

.product-name{
    font-size:18px;
    font-weight:bold;
}

.price{
    color:#5a2d82;
    font-size:20px;
    margin:10px 0;
}

.rating{
    color:gold;
}

.buy-btn{
    margin-top:10px;
    width:100%;
    padding:10px;
    background:#5a2d82;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

.buy-btn:hover{
    background:#442061;
}

</style>
</head>

<body>

<div class="header">

    <div class="logo">
        LOKALSHOP
    </div>

    <div class="nav-links">
        <a href="#">HOME</a>
        <a href="#">ABOUT US</a>
        <a href="#">CATEGORY</a>
        <a href="#">SHOP</a>
        <a href="#">CONTACT</a>
    </div>

</div>

<div class="search-container">

    <input type="text" placeholder="Search products...">

    <button>
        Search
    </button>

</div>

<div class="categories">

    <button>Electronics</button>
    <button>Fashion</button>
    <button>Groceries</button>
    <button>Sports</button>
    <button>Books</button>

</div>

<div class="sort-section">

    Sort By:
    <select>
        <option>Name</option>
        <option>Price Low-High</option>
        <option>Price High-Low</option>
        <option>Popularity</option>
    </select>

</div>

<div class="products">

    <div class="card">
        <img src="images/laptop.jpg">
        <div class="card-body">
            <div class="product-name">Gaming Laptop</div>
            <div class="price">RM 2999</div>
            <div class="rating">?????</div>
            <button class="buy-btn">Add To Cart</button>
        </div>
    </div>

    <div class="card">
        <img src="images/headphone.jpg">
        <div class="card-body">
            <div class="product-name">Headphones</div>
            <div class="price">RM 199</div>
            <div class="rating">?????</div>
            <button class="buy-btn">Add To Cart</button>
        </div>
    </div>

    <div class="card">
        <img src="images/watch.jpg">
        <div class="card-body">
            <div class="product-name">Smart Watch</div>
            <div class="price">RM 399</div>
            <div class="rating">?????</div>
            <button class="buy-btn">Add To Cart</button>
        </div>
    </div>

    <div class="card">
        <img src="images/shoes.jpg">
        <div class="card-body">
            <div class="product-name">Sports Shoes</div>
            <div class="price">RM 149</div>
            <div class="rating">?????</div>
            <button class="buy-btn">Add To Cart</button>
        </div>
    </div>

</div>

</body>
</html>