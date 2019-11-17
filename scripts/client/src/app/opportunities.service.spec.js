import { TestBed, inject } from '@angular/core/testing';
import { OpportunitiesService } from './opportunities.service';
describe('OpportunitiesService', function () {
    beforeEach(function () {
        TestBed.configureTestingModule({
            providers: [OpportunitiesService]
        });
    });
    it('should be created', inject([OpportunitiesService], function (service) {
        expect(service).toBeTruthy();
    }));
});
//# sourceMappingURL=opportunities.service.spec.js.map