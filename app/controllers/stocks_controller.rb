class StocksController < ApplicationController
  def index
    @stocks = Stock.all
    @products = Product.all
    @operations = Operation.all
  end

  def load_demo
    @stocks = Stock.insert_all([
                                 {
                                   "id": 1,
                                   "name": "Москва",
                                   "address": "Красная площадь, дом 1",
                                   "created_at": "2021-02-08 12:55:45.000",
                                   "updated_at": "2021-02-08 12:55:47.000"
                                 },
                                 {
                                   "id": 2,
                                   "name": "Санкт-Петербург",
                                   "address": "Невский проспект, дом 1",
                                   "created_at": "2021-02-08 12:56:48.000",
                                   "updated_at": "2021-02-08 12:56:50.000"
                                 },
                                 {
                                   "id": 3,
                                   "name": "Новосибирск",
                                   "address": "Красный проспект, дом 1",
                                   "created_at": "2021-02-08 12:57:14.000",
                                   "updated_at": "2021-02-08 12:57:16.000"
                                 }
                               ])

    @products = Product.insert_all([
                                     {
                                       "id": 1,
                                       "name": "Подвесная люстра GELO",
                                       "price": 4980,
                                       "created_at": "2021-02-08 15:42:04.000",
                                       "updated_at": "2021-02-08 15:42:06.000"
                                     },
                                     {
                                       "id": 2,
                                       "name": "Диван-кровать Стаут синего цвета",
                                       "price": 54390,
                                       "created_at": "2021-02-08 15:42:32.000",
                                       "updated_at": "2021-02-08 15:42:34.000"
                                     },
                                     {
                                       "id": 3,
                                       "name": "Комплект из двух полубарных стульев Nordie серого цвета",
                                       "price": 12399,
                                       "created_at": "2021-02-08 15:43:25.000",
                                       "updated_at": "2021-02-08 15:43:27.000"
                                     },
                                     {
                                       "id": 4,
                                       "name": "Приставной столик из дерева и металла",
                                       "price": 5560,
                                       "created_at": "2021-02-08 15:43:49.000",
                                       "updated_at": "2021-02-08 15:43:50.000"
                                     },
                                     {
                                       "id": 5,
                                       "name": "Кресло Шелфорд темно-синего цвета",
                                       "price": 13145,
                                       "created_at": "2021-02-08 15:44:18.000",
                                       "updated_at": "2021-02-08 15:44:19.000"
                                     },
                                     {
                                       "id": 6,
                                       "name": "Кровать Paris серого цвета 90х200",
                                       "price": 29325,
                                       "created_at": "2021-02-08 15:44:49.000",
                                       "updated_at": "2021-02-08 15:44:51.000"
                                     },
                                     {
                                       "id": 7,
                                       "name": "Тумба прикроватная Paris белого цвета",
                                       "price": 11175,
                                       "created_at": "2021-02-08 15:45:20.000",
                                       "updated_at": "2021-02-08 15:45:22.000"
                                     },
                                     {
                                       "id": 8,
                                       "name": "Тумба под телевизор Селеста белого цвета",
                                       "price": 18876,
                                       "created_at": "2021-02-08 15:45:45.000",
                                       "updated_at": "2021-02-08 15:45:47.000"
                                     },
                                     {
                                       "id": 9,
                                       "name": "Пуфик Oslo small с металлическим кольцом в основании",
                                       "price": 5580,
                                       "created_at": "2021-02-08 15:46:15.000",
                                       "updated_at": "2021-02-08 15:46:16.000"
                                     },
                                     {
                                       "id": 10,
                                       "name": "Этажерка Lindus для ванной из бамбука",
                                       "price": 7099,
                                       "created_at": "2021-02-08 15:47:16.000",
                                       "updated_at": "2021-02-08 15:47:20.000"
                                     },
                                     {
                                       "id": 11,
                                       "name": "Шкаф-витрина Roomers белого цвета",
                                       "price": 31290,
                                       "created_at": "2021-02-08 15:47:18.000",
                                       "updated_at": "2021-02-08 15:47:21.000"
                                     },
                                     {
                                       "id": 12,
                                       "name": "Зеркало настенное Мальме блэк черного цвета",
                                       "price": 6990,
                                       "created_at": "2021-02-08 15:47:41.000",
                                       "updated_at": "2021-02-08 15:47:42.000"
                                     }
                                   ])

    @operations = Operation.insert_all([
                                         {
                                           "id": "generated",
                                           "stock_id": 1,
                                           "product_id": 1,
                                           "operation_type": "coming",
                                           "quantity": 15,
                                           "created_at": "2021-01-08 13:06:23",
                                           "updated_at": "2021-01-08 13:06:24",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 2,
                                           "product_id": 1,
                                           "operation_type": "coming",
                                           "quantity": 3,
                                           "created_at": "2021-01-08 13:06:48",
                                           "updated_at": "2021-01-08 13:06:50",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 1,
                                           "product_id": 1,
                                           "operation_type": "leaving",
                                           "quantity": 3,
                                           "created_at": "2021-01-08 13:13:23",
                                           "updated_at": "2021-01-08 13:13:27",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 2,
                                           "product_id": 1,
                                           "operation_type": "coming",
                                           "quantity": 3,
                                           "created_at": "2021-01-08 13:13:25",
                                           "updated_at": "2021-01-08 13:13:29",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 1,
                                           "product_id": 1,
                                           "operation_type": "coming",
                                           "quantity": 1,
                                           "created_at": "2021-01-08 13:34:02.000",
                                           "updated_at": "2021-01-08 13:34:03.000",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 2,
                                           "product_id": 1,
                                           "operation_type": "leaving",
                                           "quantity": 1,
                                           "created_at": "2021-01-08 13:34:23.000",
                                           "updated_at": "2021-01-08 13:34:25.000",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 1,
                                           "product_id": 1,
                                           "operation_type": "coming",
                                           "quantity": 1,
                                           "created_at": "2021-02-08 13:34:40.000",
                                           "updated_at": "2021-02-08 13:34:42.000",
                                           "description": "Приемка продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 1,
                                           "product_id": 1,
                                           "operation_type": "leaving",
                                           "quantity": 1,
                                           "created_at": "2021-02-08 13:34:40.000",
                                           "updated_at": "2021-02-08 13:34:42.000",
                                           "description": "Реализация продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 1,
                                           "product_id": 1,
                                           "operation_type": "leaving",
                                           "quantity": 2,
                                           "created_at": "2021-02-08 13:34:23",
                                           "updated_at": "2021-02-08 13:34:25",
                                           "description": "Перенос продукта"
                                         },
                                         {
                                           "id": "generated",
                                           "stock_id": 3,
                                           "product_id": 1,
                                           "operation_type": "coming",
                                           "quantity": 2,
                                           "created_at": "2021-02-08 13:34:40",
                                           "updated_at": "2021-02-08 13:34:42",
                                           "description": "Перенос продукта"
                                         }
                                       ])
    redirect_to root_path

  end

  def add_product
    @operations = Operation.new
  end

  def create_product
    @operation = Operation.new(product_params)
    @operation.save
    redirect_to root_path
  end


  def add_order
    @operations = Operation.new
  end

  def create_order
    @operation = Operation.new(order_params)
    @operation.save
    redirect_to root_path
  end

  def add_transfer
    @operations = Operation.new
  end

  def create_transfer
    @operations = Operation.insert_all([
                                               {
                                                 "id": "generated",
                                                 "stock_id": transfer_params[:stock_id],
                                                 "product_id": transfer_params[:product_id],
                                                 "operation_type": "leaving",
                                                 "quantity": transfer_params[:quantity],
                                                 "created_at": "2021-02-08 13:34:23",
                                                 "updated_at": "2021-02-08 13:34:25",
                                                 "description": "Перенос продукта"
                                               },
                                               {
                                                 "id": "generated",
                                                 "stock_id": transfer_params[:transfer_to_stock_id],
                                                 "product_id": transfer_params[:product_id],
                                                 "operation_type": "coming",
                                                 "quantity": transfer_params[:quantity],
                                                 "created_at": "2021-02-08 13:34:40",
                                                 "updated_at": "2021-02-08 13:34:42",
                                                 "description": "Перенос продукта"
                                               }
                                             ])
    redirect_to root_path
  end

  def destroy_all
    @stocks = Stock.all
    @products = Product.all
    @operations = Operation.all

    @stocks.destroy_all
    @products.destroy_all
    @operations.destroy_all

    redirect_to root_path
  end

  def product_params
    params.require(:operation).permit(:product_id, :stock_id, :quantity, :operation_type, :description)
  end

  def order_params
    params.require(:operation).permit(:product_id, :stock_id, :quantity, :operation_type, :description)
  end

  def transfer_params
    params.require(:operation).permit(:product_id, :stock_id, :quantity, :transfer_to_stock_id)
  end

end
