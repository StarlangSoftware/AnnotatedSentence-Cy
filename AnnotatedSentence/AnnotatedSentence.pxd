from Corpus.Sentence cimport Sentence
from DependencyParser.ParserEvaluationScore cimport ParserEvaluationScore
from MorphologicalAnalysis.FsmMorphologicalAnalyzer cimport FsmMorphologicalAnalyzer
from PropBank.FramesetList cimport FramesetList
from FrameNet.FrameNet cimport FrameNet
from WordNet.WordNet cimport WordNet


cdef class AnnotatedSentence(Sentence):

    cdef str __file_name

    cpdef list getShallowParseGroups(self)
    cpdef bint containsFramePredicate(self)
    cpdef bint containsPredicate(self)
    cpdef bint updateConnectedPredicate(self, str previousId, str currentId)
    cpdef list predicateCandidates(self, FramesetList framesetList)
    cpdef list predicateFrameCandidates(self, FrameNet frameNet)
    cpdef str getPredicate(self, int index)
    cpdef str getFileName(self)
    cpdef removeWord(self, int index)
    cpdef str toStems(self)
    cpdef ParserEvaluationScore compareParses(self, AnnotatedSentence sentence)
    cpdef save(self)
    cpdef str getUniversalDependencyFormat(self, str path=*)
    cpdef list constructLiterals(self, WordNet wordNet, FsmMorphologicalAnalyzer fsm, int wordIndex)
    cpdef list constructSynSets(self, WordNet wordNet, FsmMorphologicalAnalyzer fsm, int wordIndex)
