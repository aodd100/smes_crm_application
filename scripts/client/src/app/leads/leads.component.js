var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
import { Component } from '@angular/core';
import { LeadsService } from '../leads.service';
var LeadsComponent = /** @class */ (function () {
    function LeadsComponent(service) {
        this.title = "List of Leads";
        this.Leads = service.getLeads();
    }
    LeadsComponent.prototype.ngOnInit = function () {
    };
    LeadsComponent = __decorate([
        Component({
            selector: 'app-leads',
            templateUrl: './leads.component.html',
            styleUrls: ['./leads.component.css']
        }),
        __metadata("design:paramtypes", [LeadsService])
    ], LeadsComponent);
    return LeadsComponent;
}());
export { LeadsComponent };
//# sourceMappingURL=leads.component.js.map