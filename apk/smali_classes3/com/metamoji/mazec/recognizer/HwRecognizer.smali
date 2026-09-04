.class public Lcom/metamoji/mazec/recognizer/HwRecognizer;
.super Ljava/lang/Object;
.source "HwRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;
    }
.end annotation


# static fields
.field private static mRecognizerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/recognizer/HwRecognizer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hRecognizer:J

.field private mEngineId:Ljava/lang/String;

.field private mRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p2, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRefCount:I

    .line 38
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mEngineId:Ljava/lang/String;

    return-void
.end method

.method public static createRecognizer(Landroid/content/Context;ILjava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;
    .locals 8

    .line 47
    sget-object v0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 52
    sget-object p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->createRecognizer(ILjava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    .line 57
    new-instance p1, Lcom/metamoji/mazec/recognizer/HwRecognizer;

    invoke-direct {p1, v1, v4, v5}, Lcom/metamoji/mazec/recognizer/HwRecognizer;-><init>(Ljava/lang/String;J)V

    .line 58
    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionLearningAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionImplicitLearningEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionImplicitLearningLimit(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2, v3, v2}, Lcom/metamoji/mazec/MazecRACLibJNI;->setRecognitionLearningLimit(Ljava/lang/String;II)V

    .line 61
    invoke-static {p0, p2}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionImplicitLearningDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v3, v2}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_setLearningDictinaryPath(JILjava/lang/String;)V

    .line 64
    :cond_1
    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionExplicitLearningEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {p2}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionImplicitLearningLimit(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x2

    invoke-static {p2, v6, v2}, Lcom/metamoji/mazec/MazecRACLibJNI;->setRecognitionLearningLimit(Ljava/lang/String;II)V

    .line 66
    invoke-static {p0, p2}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionExplicitLearningDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, v6, p0}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_setLearningDictinaryPath(JILjava/lang/String;)V

    .line 71
    :cond_2
    sget-object p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 76
    iget p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRefCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRefCount:I

    .line 78
    :cond_4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public createContext(Lcom/metamoji/mazec/RACConfig;)Lcom/metamoji/mazec/recognizer/HwRecognitionContext;
    .locals 4

    .line 106
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/RACConfig;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/MazecRACLibJNI;->createContextWithConfig(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    invoke-direct {p1, v0, v1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;-><init>(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteLearnedEntry(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)I
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_deleteLearnedEntry(JLcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 6

    .line 87
    sget-object v0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 89
    :try_start_0
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRefCount:I

    if-gtz v1, :cond_1

    .line 90
    iget-wide v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 91
    invoke-static {v1, v2}, Lcom/metamoji/mazec/MazecRACLibJNI;->destroyRecognizer(J)V

    .line 92
    iput-wide v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    .line 95
    :cond_0
    sget-object v1, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mRecognizerMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->mEngineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroyContext(Lcom/metamoji/mazec/recognizer/HwRecognitionContext;)V
    .locals 4

    .line 116
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->getNativeContext()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/MazecRACLibJNI;->destroyContext(JJ)V

    return-void
.end method

.method public getLearingCount(I)I
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_getLearingCount(JI)I

    move-result p1

    return p1
.end method

.method public getLearnedEntry(II)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_getLearnedEntry(JII)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    move-result-object p1

    return-object p1
.end method

.method public learnCharacter(Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;
    .locals 13

    .line 165
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->getStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    .line 167
    new-array v7, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    .line 170
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v5

    .line 171
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v5

    .line 172
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 173
    aput v5, v7, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_0
    new-array v5, v4, [F

    .line 177
    new-array v6, v4, [F

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_2

    .line 180
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v8

    .line 181
    invoke-virtual {v8}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v8

    .line 182
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_2
    if-ge v10, v9, :cond_1

    .line 184
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 185
    iget v12, v11, Landroid/graphics/PointF;->x:F

    aput v12, v5, v4

    .line 186
    iget v11, v11, Landroid/graphics/PointF;->y:F

    aput v11, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_2
    iget-wide v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    .line 192
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->getCharacter()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v8

    .line 197
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v9

    .line 198
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->getDeviceTag()Ljava/lang/String;

    move-result-object v10

    .line 199
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->getLearningType()I

    move-result v11

    .line 191
    invoke-static/range {v2 .. v11}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_learnCharacter(JLjava/lang/String;[F[F[IFFLjava/lang/String;I)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getError()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    .line 201
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to learn character %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Mazec"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public learnSelectedRecogCand(Lcom/metamoji/mazec/recognizer/HwRecognitionContext;Ljava/lang/String;)V
    .locals 4

    .line 211
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->getNativeContext()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_learnSelectedRecogCand(JJLjava/lang/String;)[Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    return-void
.end method

.method public resetLearning(I)I
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognizer;->hRecognizer:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/MazecRACLibJNI;->recognizer_resetLearning(JI)I

    move-result p1

    return p1
.end method
