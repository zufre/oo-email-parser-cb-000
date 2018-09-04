# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_list =  []
    arr = emails.split(",")
    str = arr.join(" ")
    list = str.split(" ")
    list.each do |email|
      if !list.includes?(email)
        list.push(email)
      end
    end
    parsed_list = list
  end


end
