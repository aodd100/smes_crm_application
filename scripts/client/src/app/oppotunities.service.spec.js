import { TestBed, inject } from '@angular/core/testing';
import { OppotunitiesService } from './oppotunities.service';
describe('OppotunitiesService', function () {
    beforeEach(function () {
        TestBed.configureTestingModule({
            providers: [OppotunitiesService]
        });
    });
    it('should be created', inject([OppotunitiesService], function (service) {
        expect(service).toBeTruthy();
    }));
});
//# sourceMappingURL=oppotunities.service.spec.js.map