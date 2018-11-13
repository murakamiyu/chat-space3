require 'rails_helper'

RSpec.describe Message, Type: :model do
	describe '#create' do
		context 'can save' do
			it'is vaild with image' do
				expect(build(:message, content: nil)).to be_valid
			end

		  it 'is vaild with content' do
		  	expect(build(:message, image: nil)).to be_valid
			end

			it 'is vaild with content and image' do
		  	expect(build(:message)).to be_valid
			end
		end

		context 'can not save' do
			it 'is invaild without content and image' do
				message = build(:message, content: nil, image: nil)
				message.valid?
				expect(message.errors[:content_or_image]).to include("can't be blank")
			end

			it 'is vaild without user_id' do
				message = build(:message, user_id: nil)
				message.valid?
				expect(message.errors[:user_id]).to include("can't be blank")
			end

			it 'is vaild without group_id' do
				message = build(:message, group_id: nil)
				message.valid?
				expect(message.errors[:group_id]).to include("can't be blank")
			end
		end
	end
end

