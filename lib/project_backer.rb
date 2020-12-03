class ProjectBacker
    attr_reader :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end

    def self.associated_with_backer(backer)
        @@all.find_all {|x| x.backer == backer}
    end

    def self.associated_with_project(project)
        @@all.find_all {|x| x.project == project}
    end
end