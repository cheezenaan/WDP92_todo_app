require 'rails_helper'

describe Task do

  it "is valid with a content and a valid status" do
    task = Task.new(
       content: "this is test.",
       status:  1
    )
    expect(task).to be_valid
  end

  it "is invalid without a content" do
    task = Task.new(content: nil)
    task.valid?
    expect(task.errors[:content]).to include("can't be blank")
  end

  it "is invalid with contents too many characters" do
    task = Task.new(
        content: "a" * 256,
        status: 1
    )
    task.valid?
    expect(task.errors[:content]).to include("is too long (maximum is 255 characters)")
  end

  it "is invalid without a status" do
    task = Task.new(status: nil)
    task.valid?
    expect(task.errors[:status]).to include("can't be blank")
  end

  it "is invalid with an invalid status" do
    expect{
      task = Task.new(
        content: "This is test",
        status:  3
      )
    }.to raise_error(ArgumentError)
  end

end