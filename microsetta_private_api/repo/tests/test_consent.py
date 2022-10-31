import unittest
from datetime import datetime
from werkzeug.exceptions import NotFound
from microsetta_private_api.repo.transaction import Transaction
from microsetta_private_api.repo.consent_repo import ConsentRepo
from microsetta_private_api.model.consent import ConsentSignature

ADULT_DATA_CONSENT = "f3ad5967-7f39-431c-b0fa-906c8c96791b"
ADULT_BIO_CONSENT = "cdcd461b-e903-46b6-b252-b2e672df24f4"
CHILD_DATA_CONSENT = "21cac84d-951d-470e-a001-463d9117f6b4"
CHILD_BIO_CONSENT = "2840bec7-9dbe-4b51-808c-0c4e8f0ab2e4"
INVALID_DOC_ID = 'ecabc635-3df8-49ee-ae19-db3db03c7393'
ACCT_ID = 'ecabc635-3df8-49ee-ae19-db3db03c4500'

CORRECT_SIGN = {"source_id": '4affcca2-1ca4-480d-88a4-b6dd2a3ba55b',
                "date_time": datetime.now(),
                "parent_1_name": None,
                "parent_2_name": None,
                "deceased__parent":  None,
                "assent_obtainer": None
                }

INVALID_SOURCE_SIGN = {"signature_id": '21cac84d-951d-470e-a001-463d911f1222',
                       "source_id": 'ecabc635-3df8-49ee-ae19-db3db03c7883',
                       "date_time": datetime.now(),
                       "parent_1_name": "father",
                       "parent_2_name": 'mother',
                       "deceased__parent": "false",
                       "assent_obtainer": "demo"
                       }

INVALID_SIGN = {"source_id": '4affcca2-1ca4-480d-88a4-b6dd2a3ba55b',
                "consent_id": 'ecabc635-3df8-49ee-ae19-db3db03c7393',
                "date_time": datetime.now(),
                "parent_1_name": "father",
                "parent_2_name": 'mother',
                "deceased__parent": "false",
                "assent_obtainer": "demo"
                }

MALFORMED_SIGN = {"source_id": '4affcca2-1ca4-480d-88a4-b6dd2a3ba55b',
                  "date_time": datetime.now(),
                  "parent_1_name": "demo",
                  "parent_2_name": "demo",
                  "deceased__parent": "false",
                  "assent_obtainer": "demo"
                  }


class ConsentRepoTests(unittest.TestCase):
    def test_sign_data_consent(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            source = CORRECT_SIGN["source_id"]
            CORRECT_SIGN.update({"consent_id": ADULT_DATA_CONSENT})
            con = ADULT_DATA_CONSENT
            sign = ConsentSignature.from_dict(CORRECT_SIGN, source, con)
            res = consentRepo.sign_consent(ACCT_ID, sign)
            self.assertTrue(res)

    def test_sign_biospecimen_consent(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            source = CORRECT_SIGN["source_id"]
            CORRECT_SIGN.update({"consent_id": ADULT_BIO_CONSENT})
            con = ADULT_BIO_CONSENT
            sign = ConsentSignature.from_dict(CORRECT_SIGN, source, con)
            res = consentRepo.sign_consent(ACCT_ID, sign)
            self.assertTrue(res)

    def test_sign_invalid_source_consent(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            src = INVALID_SOURCE_SIGN["source_id"]
            INVALID_SOURCE_SIGN.update({"consent_id": CHILD_DATA_CONSENT})
            con = CHILD_DATA_CONSENT
            sign = ConsentSignature.from_dict(INVALID_SOURCE_SIGN, src, con)
            with self.assertRaises(NotFound):
                consentRepo.sign_consent(ACCT_ID, sign)

    def test_sign_invalid_consent(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            source = INVALID_SIGN["source_id"]
            con = CHILD_DATA_CONSENT
            sign = ConsentSignature.from_dict(INVALID_SIGN, source, con)
            with self.assertRaises(NotFound):
                consentRepo.sign_consent(ACCT_ID, sign)

    def test_sign_malformed_data(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            source = MALFORMED_SIGN["source_id"]
            MALFORMED_SIGN.update({"consent_id": ADULT_DATA_CONSENT})
            con = ADULT_DATA_CONSENT
            sign = ConsentSignature.from_dict(MALFORMED_SIGN, source, con)
            with self.assertRaises(NotFound):
                consentRepo.sign_consent(ACCT_ID, sign)

    def test_fetch_invalid_document(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            res = consentRepo.get_consent_document(INVALID_DOC_ID)
            self.assertEqual(None, res)

    def test_check_invalid_consent(self):
        with Transaction() as t:
            consentRepo = ConsentRepo(t)
            source = INVALID_SOURCE_SIGN['source_id']
            res = consentRepo.is_consent_required(source, "Data")
            self.assertTrue(res)


if __name__ == '__main__':
    unittest.main()
