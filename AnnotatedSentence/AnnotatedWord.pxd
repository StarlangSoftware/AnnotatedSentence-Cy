from DependencyParser.Universal.UniversalDependencyRelation cimport UniversalDependencyRelation
from Dictionary.Word cimport Word
from MorphologicalAnalysis.MetamorphicParse cimport MetamorphicParse
from MorphologicalAnalysis.MorphologicalParse cimport MorphologicalParse
from NamedEntityRecognition.Gazetteer cimport Gazetteer
from PropBank.Argument cimport Argument


cdef class AnnotatedWord(Word):

    cdef MorphologicalParse __parse
    cdef MetamorphicParse __metamorphicParse
    cdef str __semantic
    cdef object __namedEntityType
    cdef Argument __argument
    cdef str __shallowParse
    cdef UniversalDependencyRelation __universalDependency

    cpdef str getLayerInfo(self, object viewLayerType)
    cpdef MorphologicalParse getParse(self)
    cpdef setParse(self, MorphologicalParse parseString)
    cpdef MetamorphicParse getMetamorphicParse(self)
    cpdef setMetamorphicParse(self, str parseString)
    cpdef str getSemantic(self)
    cpdef setSemantic(self, str semantic)
    cpdef object getNamedEntityType(self)
    cpdef setNamedEntityType(self, str namedEntity)
    cpdef Argument getArgument(self)
    cpdef setArgument(self, str argument)
    cpdef str getShallowParse(self)
    cpdef setShallowParse(self, str parse)
    cpdef UniversalDependencyRelation getUniversalDependency(self)
    cpdef setUniversalDependency(self, int to, str dependencyType)
    cpdef getFormattedString(self, object wordFormat)
    cpdef checkGazetteer(self, Gazetteer gazetteer)
