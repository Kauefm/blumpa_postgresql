class ProductMailer < ApplicationMailer
  def created(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi criado com sucesso"
    )
  end

 def edited(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi editado com sucesso"
    )
  end

  def erased(product)
    @product = product
    mail(
      to: @product.client.email,
      subject: "O produto #{@product.description} foi apagado com sucesso"
    )
  end
end
