class Apis {
  Apis._();

  static const baseUrl = 'https://dummyjson.com';
  static const login = '/auth/login';
  static const profile = '/auth/me';
  static const refresh = '/auth/refresh';
  static const users = '/users';
  static const user = '/users/{id}';
  static const addUser = '/users/add';
  static const products = '/products';
  static const product = '/products/{id}';
  static const productCategories = '/products/categories';
  static const carts = '/carts';
  static const cart = '/carts/{id}';
  static const addCart = '/carts/add';
  static const posts = '/posts';
  static const post = '/posts/{id}';
  static const userPosts = '/posts/user/{id}';
}
