# frozen_string_literal: true   
require 'rspec'
require_relative '../app/handshake'

RSpec.describe Handshake do
    before do
        @handshake = Handshake.new
    end
    describe '.number_par' do
        it 'return true if the number is par' do
            expect(@handshake.number_par(2)).to eq(true)
        end
        it 'return false if the number is impar' do
            expect(@handshake.number_par(1)).to eq(false)
        end
    end
end
