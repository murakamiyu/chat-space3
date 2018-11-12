require 'rails_helper'

describe Message do
	describe '#create' do
		context 'can save' do
			it'is vaild with content' do
				expect(build(:message, content: nil)).to be_valid
			end

		  it 'is vaild with image' do
		  	expect(build(:message, image: nil)).to be_valid
			end

			it 'is vaild with content and image' do
		  	expect(build(:message)).to be_valid
			end
		end
	end
end

