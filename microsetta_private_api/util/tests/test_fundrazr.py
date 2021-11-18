from unittest import TestCase, skipIf, main
import datetime

from microsetta_private_api.config_manager import SERVER_CONFIG
from microsetta_private_api.util.fundrazr import get_fundrazr_transactions
from microsetta_private_api.repo.campaign_repo import UserTransaction
from microsetta_private_api.repo.transaction import Transaction


class FundRazrTests(TestCase):
    @skipIf(SERVER_CONFIG['fundrazr_url'] in ('', 'fundrazr_url_placeholder'),
            "Fundrazr secrets not provided")
    def test_get_fundrazr_transactions(self):
        # integration test, verify we can pull from fundrazr and insert
        # real obtained data

        # we should have zero transactions as test database doesn't have any
        # resident
        now = datetime.datetime.now()
        with Transaction() as t:
            ut = UserTransaction(t)
            obs = ut.get_transactions(before=now)
            self.assertEqual(obs, [])

        get_fundrazr_transactions()

        with Transaction() as t:
            ut = UserTransaction(t)
            obs = ut.get_transactions(before=now)

            # staging has like 7 transactions, but let's not assume that'll be
            # true in perpetuity
            self.assertTrue(len(obs) > 0)


if __name__ == '__main__':
    main()
