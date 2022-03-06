class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :category

  def category
    {
      macroservice: object.category.name
    }
  end
end
