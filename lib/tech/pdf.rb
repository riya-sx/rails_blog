

module Tech
  class Pdf
    def self.create
      dirname = Rails.root.join('app', 'assets', 'images')
      Prawn::Font::AFM.hide_m17n_warning = true
      pdf = Prawn::Document.new(page_size: 'A4', page_layout: :landscape)
      pdf.font_families.update("Arial" => {
        :normal => Rails.root.join("app/assets/fonts/OpenSans-Regular.ttf"),
        :italic => Rails.root.join("app/assets/fonts/OpenSans-Regular.ttf"),
        :bold => Rails.root.join("app/assets/fonts/OpenSans-Bold.ttf"),
        :bold_italic => Rails.root.join("app/assets/fonts/OpenSans-Bold.ttf")
      })

      # Fetch data from the User model using pluck
      user_list = User.pluck(:id, :role, :first_name, :last_name)

      pdf.table([["ID", "Role", "FirstName", "LastName"]] + user_list, 
                :cell_style => {:borders => [], :padding => [0, 20, 10, 0]}) do
        column(0).style :width => 50
        column(1).style :width => 100
        column(2).style :width => 150
        column(3).style :width => 150
      end
      pdf.move_down(10)
          
      pdf.render_file "#{dirname}/RDMONTH-#{Date.today.strftime("%m%y")}-#{user_list.size}-users.pdf"


    end
  end
end
