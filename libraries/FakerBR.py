from faker import Faker
from typing import Optional
import re

class FakerBR:
    def __init__(self):
        self.faker = Faker('pt_BR')

    def cnpj(self):
        cnpj = self.faker.cnpj()
        return re.sub(r'\D', '', cnpj)
    
    def neighborhood(self):
        return self.faker.neighborhood()
    
    def name(self):
        return self.faker.name()
    
    def company(self):
        return self.faker.company()
    
    def password(self):
        return Faker('en_US').password()
    
    def phone_number(self):
        return self.faker.phone_number()
    
    def city(self):
        return self.faker.city()
    
    def current_country(self):
        return self.faker.current_country()
    
    def email(self):
        return self.faker.email()
    
    def state_abbr(self):
        return self.faker.state_abbr()
    
    def street_name(self):
        return self.faker.street_name()
    
    def postcode(self, numbers_only: Optional[bool] = False) -> str:
        postcode = self.faker.postcode()
        if numbers_only == True:
            postcode = re.sub(r'\D', '', postcode)
        return postcode
        
    def random_number(self, digits: Optional[int], fix_len: bool = ...) -> int:
        return self.faker.random_number(digits=digits, fix_len=fix_len)