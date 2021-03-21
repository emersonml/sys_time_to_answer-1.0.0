class AdminStatistic < ApplicationRecord
    EVENTS = {
        total_users: "TOTAL_USERS",
        total_questions: "TOTAL_QUESTIONS",

    }


    scope :s_totalUsers, -> {
        find_by_event(EVENTS[:total_users]).value # quando se esta usando o active record no exemplo find_by_event entao pode-se criar um scope
    }
    scope :s_totalQuestions, -> {
        find_by_event(EVENTS[:total_questions]).value # quando se esta usando o active record no exemplo find_by_event entao pode-se criar um scope
    }

      # Class Methods
  def self.f_setEvent(event)
    admin_statistic = AdminStatistic.find_or_create_by(event: event)
    admin_statistic.value += 1
    admin_statistic.save
  end

end
