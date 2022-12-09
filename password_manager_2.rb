
class PasswordManager2

    def initialize
        @passwords = {}
    end

    def add(service, password)
        if @passwords.has_key?(service) == false && @passwords.has_value?(password) == false
            return @passwords[service] = password
        elsif 
            @passwords.has_key?(service)
            return "ERROR: Service names must be unique"
        else
            @passwords.has_value?(password)
            return "ERROR: Passwords must be unique"
        end
    end

    def remove(service)
        @passwords.delete(service)
    end

    def services 
        return @passwords.keys
    end

    def sort_by(sort)
        if sort == "service"
            return @passwords.keys.sort
        else 
            return @passwords.keys.reverse
        end
    end

    def password_for(service)
        return @passwords[service]
    end

    def update(service, password)
        new_password = { service => password}
        if @passwords.has_value?(password) == false
            return @passwords.merge!(new_password)
        end
    end

end
