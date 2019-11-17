import { TestBed, inject } from '@angular/core/testing';
import { LeadsService } from './leads.service';
describe('LeadsService', function () {
    beforeEach(function () {
        TestBed.configureTestingModule({
            providers: [LeadsService]
        });
    });
    it('should be created', inject([LeadsService], function (service) {
        expect(service).toBeTruthy();
    }));
});
//# sourceMappingURL=leads.service.spec.js.map