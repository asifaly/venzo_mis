require 'test_helper'

class BankcontactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bankcontact = bankcontacts(:one)
  end

  test "should get index" do
    get bankcontacts_url
    assert_response :success
  end

  test "should get new" do
    get new_bankcontact_url
    assert_response :success
  end

  test "should create bankcontact" do
    assert_difference('Bankcontact.count') do
      post bankcontacts_url, params: { bankcontact: { bank_id: @bankcontact.bank_id, contact_id: @bankcontact.contact_id } }
    end

    assert_redirected_to bankcontact_url(Bankcontact.last)
  end

  test "should show bankcontact" do
    get bankcontact_url(@bankcontact)
    assert_response :success
  end

  test "should get edit" do
    get edit_bankcontact_url(@bankcontact)
    assert_response :success
  end

  test "should update bankcontact" do
    patch bankcontact_url(@bankcontact), params: { bankcontact: { bank_id: @bankcontact.bank_id, contact_id: @bankcontact.contact_id } }
    assert_redirected_to bankcontact_url(@bankcontact)
  end

  test "should destroy bankcontact" do
    assert_difference('Bankcontact.count', -1) do
      delete bankcontact_url(@bankcontact)
    end

    assert_redirected_to bankcontacts_url
  end
end
