import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AccountantTest {

    Accountant ACT = new Accountant("Silva");
    TechnicalLead TL = new TechnicalLead("Jhon");
    SoftwareEngineer SE = new SoftwareEngineer("Wildan");

    @Test
    void testCanApproveBonusFalse() {
        TL.addReport(SE);
        ACT.supportTeam(TL);
        assertFalse(ACT.canApproveBonus(20000000));
    }

    @Test
    void testCanApproveBonusTrue() {
        TL.addReport(SE);
        ACT.supportTeam(TL);
        assertTrue(ACT.canApproveBonus(1000));
    }
}