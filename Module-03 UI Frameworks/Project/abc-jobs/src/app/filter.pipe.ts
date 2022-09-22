import { Pipe, PipeTransform } from '@angular/core';
import { User } from './User';

@Pipe({
  name: 'filterUser'
})
export class FilterPipe implements PipeTransform {

  transform(userFilter: User[], filterText: string): User[] {
    if (!userFilter || !userFilter) {
      return userFilter;
    } else {
      return userFilter.filter(userFilter =>
        userFilter.firstName.toLocaleLowerCase().includes(filterText.toLocaleLowerCase()) ||
        userFilter.lastName.toLocaleLowerCase().includes(filterText.toLocaleLowerCase()) ||
        userFilter.company.toLocaleLowerCase().includes(filterText.toLocaleLowerCase()) ||
        userFilter.city.toLocaleLowerCase().includes(filterText.toLocaleLowerCase()) ||
        userFilter.country.toLocaleLowerCase().includes(filterText.toLocaleLowerCase())
      );
    }
  }
}
