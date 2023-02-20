import unittest

from AnnotatedSentence.AnnotatedCorpus import AnnotatedCorpus


class AnnotatedSentenceTest(unittest.TestCase):

    def test_corpus(self):
        corpus = AnnotatedCorpus("../sentences")
        self.assertEqual(10, corpus.sentenceCount())
