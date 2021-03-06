# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test 'should get index' do
    get tasks_url
    assert_response :success
  end

  test 'should get new' do
    get new_task_url
    assert_response :success
  end

  test 'should not create task' do
    assert_no_difference('Task.count') do
      post tasks_url, params: { task: { bank_id: @task.bank.id, project: '', task_name: @task.task_name } }
    end

    assert_no_difference('Task.count') do
      post tasks_url, params: { task: { bank_id: @task.bank.id, project: @task.project, task_name: '' } }
    end

    assert_no_difference('Task.count') do
      post tasks_url, params: { task: { bank_id: '', project: @task.project, task_name: @task.task_name } }
    end
  end

  test 'should create task' do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { bank_id: @task.bank.id, project: @task.project, task_name: @task.task_name } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test 'should show task' do
    get task_url(@task)
    assert_response :success
  end

  test 'should get edit' do
    get edit_task_url(@task)
    assert_response :success
  end

  test 'should update task' do
    patch task_url(@task), params: { task: { bank_id: @task.bank.id, project: @task.project, task_name: @task.task_name } }
    assert_redirected_to task_url(@task)
  end

  test 'should not update task' do
    patch task_url(@task), params: { task: { bank_id: @task.bank.id, project: '', task_name: @task.task_name } }
    assert_not @task.errors.any?
  end

  test 'should destroy task' do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end
    # assert_redirected_to tasks_url
  end
end
