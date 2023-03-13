<%--
  Created by IntelliJ IDEA.
  User: toaster
  Date: 3/10/23
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <style>
        body {
            overflow-x: hidden;
        }
        .bckgrnd-img {
            position: absolute;
            background-image: url("img/scary-pizza.jpeg");
            background-size: cover;
            background-repeat: no-repeat;

            width: 200%;
            height: 370%;
            left: -65vw;
            top: -18vh;
            /* overflow: hidden; */
            opacity: 100%;
        }
        * {
            opacity: 95%;
            color: aliceblue;
            /* background-color: black; */
        }
        @media screen and (min-width: 700px) {
            .jumbotron {
                display: flex;
                filter: blur(10px);
                background-image: url("/img/pizza.png");
                height: 346px;
                background-size: cover;
                opacity: 100%;
            }
            .faux-jumbotron {
                z-index: 2;
                position: absolute;
                display: flex;
                /* filter: blur(4px); */
                /* background-image: url("/img/scary-pizza.jpeg");*/
                height: 346px;
                width: 1296px;
                background-size: cover;
            }

            .opacity-header {
                filter: sepia(1);
                font-size: 2em;
                display: block;
                width: 100%;
                /* color: #333; */
                background-color: rgba(64, 64, 64, 0.624);
                padding: 2em auto;
                margin: auto;
                text-align: center;
            }
        }

        .btn-proceed {
            width: auto;

            margin: 0 2em 2em auto;
        }
        /* overrides */
        .card-header {
            background-color: rgba(12, 12, 12, 1);
        }
        .nav-link.active {
            background-color: rgba(12, 12, 12, 1) !important;
        }

        .list-group-item {
            background-color: rgba(47, 47, 47, 1);
        }
        .card {
            background-color: rgba(47, 47, 47, 1);
        }

        .bg-light {
            background-color: rgba(47, 47, 47, 1) !important;
            color: aliceblue !important;
        }
        .navbar-brand {
            color: aliceblue !important;
        }

        .nav-link {
            color: aliceblue !important;
        }
        .tab-content {
            height: 40em;
        }

        .navbar {
            /* position: absolute; */
            z-index: 21;
        }
    </style>
    <title>Pizza Time</title>
</head>
<body>
<div class="bckgrnd-img"></div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <img
                src="./img/little-c.png"
                alt="happy fella"
                width="30"
                height="24"
                class="d-inline-block align-text-top"
        />
        <a class="navbar-brand" href="#">Pizza Time</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Specials</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Menu
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Pizzas</a></li>
                        <li><a class="dropdown-item" href="#">Sides</a></li>
                        <li><a class="dropdown-item" href="#">Desserts</a></li>
                        <li><a class="dropdown-item" href="#">Drinks</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li>
                            <a class="dropdown-item" href="#">Dipping Sauce & Extras</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    margin="auto"
                    width="16"
                    height="16"
                    fill="currentColor"
                    class="bi bi-person-fill"
                    viewBox="0 0 16 16"
            >
                <path
                        d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"
                />
            </svg>
            <a class="nav-link" style="color: #666" href="#">Login</a>
            <form class="d-flex" style="padding-right: 1em">
                <input
                        class="form-control me-2"
                        type="search"
                        placeholder="Enter a Promo Code"
                        aria-label="Apply"
                />
                <button class="btn btn-outline-success" type="submit">Apply</button>
            </form>
            <div class="position-relative">
                <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="22"
                        height="22"
                        fill="currentColor"
                        class="bi bi-cart"
                        viewBox="0 0 16 16"
                >
                    <path
                            d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"
                    />
                </svg>
                <span
                        class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
                >
              0
              <span class="visually-hidden">unread messages</span>
            </span>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <div class="faux-jumbotron">
        <div class="opacity-header">Welcome to PIZZA TIME!!1!</div>
    </div>
    <div class="jumbotron"></div>

    <h2>Build your own pizza.</h2>

    <!-- ********************************************* TABS ********************************************* -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a
                    class="nav-link active"
                    id="size-tab"
                    data-bs-toggle="tab"
                    data-bs-target="#size"
                    type="button"
                    role="tab"
                    aria-controls="size"
                    aria-selected="true"
            ><span class="badge rounded-pill bg-secondary">1</span>Size &
                Crust</a
            >
        </li>

        <li class="nav-item">
            <a
                    class="nav-link"
                    id="cheese-tab"
                    data-bs-toggle="tab"
                    data-bs-target="#cheese"
                    type="button"
                    role="tab"
                    aria-controls="cheese"
                    aria-selected="false"
            ><span class="badge rounded-pill bg-secondary">2</span>Cheese &
                Sauce</a
            >
        </li>
        <li class="nav-item">
            <a
                    class="nav-link"
                    id="toppings-tab"
                    data-bs-toggle="tab"
                    data-bs-target="#toppings"
                    type="button"
                    role="tab"
                    aria-controls="toppings"
                    aria-selected="false"
            ><span class="badge rounded-pill bg-secondary">3</span>Toppings</a
            >
        </li>
    </ul>
    <!-- ********************************************* BODY ********************************************* -->
    <div class="card tab-content">
        <div class="card-header">Customize your pizza</div>
        <!-- ********************************************* CARD1 ********************************************* -->
        <div
                class="card-body tab-pane fade show active"
                id="size"
                role="tabpanel"
                aria-labelledby="size-tab"
        >
            <div class="card" style="width: 18rem; margin-bottom: 1em">
                <div class="card-header">Size</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSize"
                                    id="pizzaSize1"
                                    checked
                            />
                            <label class="form-check-label" for="pizzaSize1"
                            >Small - 1"
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSize"
                                    id="pizzaSize2"
                            />
                            <label class="form-check-label" for="pizzaSize2">
                                Medium - 12"
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSize"
                                    id="pizzaSize3"
                            />
                            <label class="form-check-label" for="pizzaSize3">
                                Large - 16'
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSize"
                                    id="pizzaSize4"
                            />
                            <label class="form-check-label" for="pizzaSize4">
                                None
                            </label>
                        </div>
                    </li>
                </ul>
            </div>

            <div
                    class="card fade show active"
                    style="width: 18rem"
                    id="size"
                    role="tabpanel"
                    aria-labelledby="size-tab"
            >
                <div class="card-header">Crust</div>

                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCrustForm"
                                    id="pizzaCrustForm1"
                                    checked
                            />
                            <label class="form-check-label" for="pizzaCrustForm1"
                            >Traditional
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCrustForm"
                                    id="pizzaCrustForm2"
                            />
                            <label class="form-check-label" for="pizzaCrustForm2">
                                Stuffed
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCrustForm"
                                    id="pizzaCrustForm3"
                            />
                            <label class="form-check-label" for="pizzaCrustForm3">
                                Raw Chicken Crumbs
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCrustForm"
                                    id="pizzaCrustForm4"
                            />
                            <label class="form-check-label" for="pizzaCrustForm4">
                                Extra Krusty™
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCrustForm"
                                    id="pizzaCrustForm5"
                            />
                            <label class="form-check-label" for="pizzaCrustForm5">
                                None
                            </label>
                        </div>
                    </li>
                </ul>
            </div>
            <button
                    type="button"
                    class="btn btn-primary btn-proceed"
                    style="position: absolute; right: 0; bottom: 0"
                    id="next-button1"
                    data-bs-toggle="tab"
                    data-bs-target="#cheese"
                    type="button"
                    role="tab"
                    aria-controls="cheese"
                    aria-selected="true"
            >
                Next Step >>
            </button>

        </div>

        <!-- ********************************************* CARD2 ********************************************* -->
        <div
                class="card-body tab-pane fade"
                id="cheese"
                role="tabpanel"
                aria-labelledby="cheese-tab"
        >
            <div class="card" style="width: 18rem; margin-bottom: 1em">
                <div class="card-header">Cheese</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCheese"
                                    id="pizzaCheese1"
                                    checked
                            />
                            <label class="form-check-label" for="pizzaCheese1"
                            >Mozzerella
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCheese"
                                    id="pizzaCheese2"
                            />
                            <label class="form-check-label" for="pizzaCheese2">
                                Cheddar
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCheese"
                                    id="pizzaCheese3"
                            />
                            <label class="form-check-label" for="pizzaCheese3">
                                Yes
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaCheese"
                                    id="pizzaCheese4"
                            />
                            <label class="form-check-label" for="pizzaCheese4">
                                None
                            </label>
                        </div>
                    </li>
                </ul>
            </div>

            <div
                    class="card fade show active"
                    style="width: 18rem"
                    id="size"
                    role="tabpanel"
                    aria-labelledby="size-tab"
            >
                <div class="card-header">Sauce</div>

                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSauceForm"
                                    id="pizzaSauceForm1"
                                    checked
                            />
                            <label class="form-check-label" for="pizzaSauceForm1"
                            >Traditional Tomato
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSauceForm"
                                    id="pizzaSauceForm2"
                            />
                            <label class="form-check-label" for="pizzaSauceForm2">
                                BBQ
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSauceForm"
                                    id="pizzaSauceForm3"
                            />
                            <label class="form-check-label" for="pizzaSauceForm3">
                                Toothpaste
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSauceForm"
                                    id="pizzaSauceForm4"
                            />
                            <label class="form-check-label" for="pizzaSauceForm4">
                                Chef's Surprise
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="radio"
                                    name="pizzaSauceForm"
                                    id="pizzaSauceForm5"
                            />
                            <label class="form-check-label" for="pizzaSauceForm5">
                                None
                            </label>
                        </div>
                    </li>
                </ul>
            </div>
            <div
                    class="btn-group"
                    style="position: absolute; right: 0; bottom: 0; margin: 32px"
                    role="group"
                    aria-label="Basic example"
            >
                <button type="button" class="btn btn-primary"><< Back</button>
                <button type="button" class="btn btn-primary">Next >></button>
            </div>
        </div>
        <!-- ********************************************* CARD3 ********************************************* -->
        <div
                class="card-body tab-pane fade"
                id="toppings"
                role="tabpanel"
                aria-labelledby="toppings-tab"
        >
            <div class="card" style="width: 18rem; margin-bottom: 1em">
                <div class="card-header">Toppings</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                        <div class="form-check">
                            <form method="post" >
                            <input
                                    class="form-check-input"
                                    type="checkbox"
                                    name="pizzaTopping"
                                    id="pizzaTopping1"
                                    checked
                            />
                            <label class="form-check-label" for="pizzaTopping1"
                            >Pepporoni
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="checkbox"
                                    name="pizzaTopping"
                                    id="pizzaTopping2"
                            />
                            <label class="form-check-label" for="pizzaTopping2">
                                Pineapple
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="checkbox"
                                    name="pizzaTopping"
                                    id="pizzaTopping3"
                            />
                            <label class="form-check-label" for="pizzaTopping3">
                                Bacon
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="checkbox"
                                    name="pizzaTopping"
                                    id="pizzaTopping4"
                            />
                            <label class="form-check-label" for="pizzaTopping4">
                                Crumbs
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="checkbox"
                                    name="pizzaTopping"
                                    id="pizzaTopping5"
                            />
                            <label class="form-check-label" for="pizzaTopping5">
                                Microplastic
                            </label>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="form-check">
                            <input
                                    class="form-check-input"
                                    type="checkbox"
                                    name="pizzaTopping"
                                    id="pizzaTopping6"
                            />
                            <label class="form-check-label" for="pizzaTopping6">
                                Anchovies
                            </label>
                        </div>
                    </li>
                </ul>
            </div>
            <button

                    class="btn btn-primary btn-proceed"
                    style="position: absolute; right: 0; bottom: 0"
                    id="pizza-button"
                    data-bs-toggle="tab"
                    data-bs-target="#cheese"
                    role="tab"
                    aria-controls="cheese"
            >
                Checkout
            </button>
            </form>
        </div>
    </div>

</div>


<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"
></script>
</body>
</html>
