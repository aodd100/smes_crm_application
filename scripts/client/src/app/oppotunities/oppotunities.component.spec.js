import { async, TestBed } from '@angular/core/testing';
import { OppotunitiesComponent } from './oppotunities.component';
describe('OppotunitiesComponent', function () {
    var component;
    var fixture;
    beforeEach(async(function () {
        TestBed.configureTestingModule({
            declarations: [OppotunitiesComponent]
        })
            .compileComponents();
    }));
    beforeEach(function () {
        fixture = TestBed.createComponent(OppotunitiesComponent);
        component = fixture.componentInstance;
        fixture.detectChanges();
    });
    it('should create', function () {
        expect(component).toBeTruthy();
    });
});
//# sourceMappingURL=oppotunities.component.spec.js.map