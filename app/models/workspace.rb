class Workspace < ApplicationRecord
  	mount_uploader :picture, PictureUploader
    belongs_to :host

  #belongs_to :host
	
	# validates :host_id , presence: true
	
  validates :seats , presence: true
	
  validates :price , presence: true
  
  validates :location , presence: true 
  
  validates :description, presence: true 
    
  validates :name, presence: true 



  def self.search(search)
        if search.present?
          where("location @@ :q or country @@ :q " , q: search)
        else
          where(nil)
        end
      end
  # validates :country, presence: true 	
    #Custom validation
  # validate :picture_size

    # Validates the size of an uploaded picture
    private  
      def picture_size
      	if picture.size > 5.megabytes
      		errors.add(:picture, "should be less than 5MB")
      	end
      end

      

    # where("city @@ :q or name @@ :q or country @@ :q", q: search)
   


end

