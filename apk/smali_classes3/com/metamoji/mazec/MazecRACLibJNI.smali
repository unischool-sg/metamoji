.class public Lcom/metamoji/mazec/MazecRACLibJNI;
.super Ljava/lang/Object;
.source "MazecRACLibJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "MazecRecognizer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v0, "mazecRACLibJa"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native HwRecognitionResult_destroy(J)V
.end method

.method public static native HwRecognitionResult_getAltBlocks(JI)[Lcom/metamoji/mazec/recognizer/HwCandidates;
.end method

.method public static native HwRecognitionResult_getAltBlocksCount(JII)I
.end method

.method public static native HwRecognitionResult_getCandidatesAt(JI)Lcom/metamoji/mazec/recognizer/HwCandidates;
.end method

.method public static native HwRecognitionResult_getCandidatesCount(J)I
.end method

.method public static native HwRecognitionResult_getStrokeBlocks(J)[Lcom/metamoji/mazec/stroke/StrokeBlock;
.end method

.method public static native HwRecognitionResult_getTopCandidateString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native HwRecognitionResult_selectCandidate(JILjava/lang/String;I)Z
.end method

.method public static native HwRecognitionResult_setActive(J[J[II)Z
.end method

.method public static native categoryForText(Ljava/lang/String;Ljava/lang/String;I)[I
.end method

.method public static native clearHwSelection(J)V
.end method

.method public static native clearStrokes(J)V
.end method

.method public static native createContext(J)J
.end method

.method public static native createContextWithConfig(JJ)J
.end method

.method public static native createRecognizer(ILjava/lang/String;)J
.end method

.method public static native destroyContext(JJ)V
.end method

.method public static native destroyRecognitionLearningInfo(J)V
.end method

.method public static native destroyRecognizer(J)V
.end method

.method public static native getCharStrokeBlocks([F[F[I[J[FIFF)[Lcom/metamoji/mazec/stroke/StrokeBlock;
.end method

.method public static native getFilterCharactersJNI(Ljava/lang/String;JI)Ljava/lang/String;
.end method

.method public static native getRecognitionLearningLimit(Ljava/lang/String;I)I
.end method

.method public static native getVersion(J)Ljava/lang/String;
.end method

.method public static native getWordStrokeBlocks([F[F[I[J[FIFFF)[Lcom/metamoji/mazec/stroke/StrokeBlock;
.end method

.method public static native recognize(J[F[F[I[J[FIFFFFFI[F[FJ)J
.end method

.method public static native recognize(J[F[F[I[J[FIFFFFI[F[FJ)J
.end method

.method public static native recognize(J[F[F[I[J[FIJ)J
.end method

.method public static native recognizer_deleteLearnedEntry(JLcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)I
.end method

.method public static native recognizer_getLearingCount(JI)I
.end method

.method public static native recognizer_getLearnedEntry(JII)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;
.end method

.method public static native recognizer_learnCharacter(JLjava/lang/String;[F[F[IFFLjava/lang/String;I)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;
.end method

.method public static native recognizer_learnSelectedRecogCand(JJLjava/lang/String;)[Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;
.end method

.method public static native recognizer_resetLearning(JI)I
.end method

.method public static native recognizer_setLearningDictinaryPath(JILjava/lang/String;)V
.end method

.method public static native setFilter(JI)V
.end method

.method public static native setGuidelines(JFFFF)V
.end method

.method public static native setHwBlockSelection(J[J[II)V
.end method

.method public static native setHwCandidateSelection(J[JILjava/lang/String;I)V
.end method

.method public static native setIMResourceDirectory(Ljava/lang/String;)V
.end method

.method public static native setRecognitionLearningLimit(Ljava/lang/String;II)V
.end method

.method public static native setWordspacingCoef(JF)V
.end method
