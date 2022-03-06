class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :category

  def category
    {
      macroservice: self.object.category.name
    }
  end
end
