# Authorization

```
POST http://localhost:3000/api/login
Content-Type: application/json
api: v1

{
  "username": "admin",
  "password": "admin"
}
```

```   
GET http://localhost:3000/api/profile
Content-Type: application/json
Authorization: Bearer TOKEN
api: v1
```

# Brands

```
GET http://localhost:3000/api/brands/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
DELETE http://localhost:3000/api/brands/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
GET http://localhost:3000/api/brands?is_include_products=true
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
POST http://localhost:3000/api/brands
Content-Type: application/json
Authorization: Bearer TOKEN
api: v1

{
  "brand": {
    "name": "Lol brand",
    "description": "nice brand",
    "code": "suprt_brand"
  }
}
```

```
PUT http://localhost:3000/api/brands/:id
Content-Type: application/json
Authorization: Bearer TOKEN
api: v1

{
  "brand": {
    "name": "Super mega brand"
  }
}
```

# Products

```
GET http://localhost:3000/api/products/?is_include_items=true
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
DELETE http://localhost:3000/api/products/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
GET http://localhost:3000/api/products/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
POST http://localhost:3000/api/products
Content-Type: application/json
Authorization: Bearer TOKEN
api: v1

{
  "product": {
    "name": "Opp product",
    "description": "nice product",
    "brand_id": 2,
    "expiration_date": "2021-11-11",
    "beginning_date": "2021-01-10",
    "available": true,
    "category_ids": ["3", "5", "6665"]
  }
}
```

```
PUT http://localhost:3000/api/products/:id
Content-Type: application/json
Authorization: Bearer TOKEN
api: v1

{
  "product": {
    "name": "New neo product",
    "category_ids": ["4"]
  }
}
```

# Categories

```
GET http://localhost:3000/api/categories/:id?is_include_subcategories=true&is_include_products=true
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
GET http://localhost:3000/api/categories/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
GET http://localhost:3000/api/categories?is_include_subcategories=true&is_include_products=true
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
DELETE http://localhost:3000/api/categories/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
POST http://localhost:3000/api/categories
Content-Type: application/json
api: v1

{
  "category": {
    "name": "Great category",
    "description": "great category",
    "code": "great_category",
    "parent_category_id": 3
  }
}
```

```
PUT http://localhost:3000/api/categories/:id
Content-Type: application/json
api: v1

{
  "category": {
    "name": "Super mega category",
    "parent_category_id": 3
  }
}
```

# Product Items

```
GET http://localhost:3000/api/product_items
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
GET http://localhost:3000/api/product_items/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
DELETE http://localhost:3000/api/product_items/:id
cache-control: no-cache
Authorization: Bearer TOKEN
api: v1
```

```
POST http://localhost:3000/api/product_items
Content-Type: application/json
api: v1

{
  "product_item": {
    "name": "Next generation of bag",
    "description": "nice text",
    "price": 50000,
    "size": "M",
    "color": "green",
    "available": true,
    "product_id": 6
  }
}
```

```
PUT http://localhost:3000/api/product_items/:id
Content-Type: application/json
api: v1

{
  "product_item": {
    "name": "Future generation of bag"
  }
}
```
