class Paper < ActiveRecord::Base


## Relationships
## ==============================
belongs_to :document
belongs_to :employee


## Validations
## ============================== 
validates_presence_of :document_id
validates_presence_of :employee_id


end
