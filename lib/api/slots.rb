module API
  class Slots < Grape::API
    resource :slots do
      desc 'Perform actions on the slot of uuids'
      params do
        requires :asp_uuid, :type => String, :desc => "UUUID of asp"
      end
      segment '/:asp_uuid' do
        desc "Retrieve a set of uuids for this specific asp"
        get do
        end

        desc "Update a set of uuids for this specific asp", {
          :notes => <<-NOTE
            * If an old set was available, it will be removed.
            * The order of the set is not necessarly preserved.
          NOTE
        }
        put do
        end

        desc "Add a uuid to the set for this specific asp", {
          :notes => <<-NOTE
            Order of the uuids is not preserved.
          NOTE
        }
        post do
        end


        desc "Deletes a set of uuids for this specific asp", {
          :notes => <<-NOTE
            Deletes the complete set of uuids, returning the deleted set.
          NOTE
        }
        delete do
        end
      end
    end
  end
end
