.class public Lcom/metamoji/mazec/converter/ConvertEngine;
.super Ljava/lang/Object;
.source "ConvertEngine.java"


# instance fields
.field private hConverter:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    return-void
.end method

.method protected static native addUserWordJNI(JJ)Z
.end method

.method protected static native addUserWordsJNI(J[J)Z
.end method

.method protected static native breakSequenceJNI(J)V
.end method

.method protected static native clearLearnWordsJNI(J)Z
.end method

.method protected static native clearUserWordsJNI(J)Z
.end method

.method protected static native commitJNI(JJJZ)V
.end method

.method protected static native convertJNI(JJLjava/lang/String;J)Lcom/metamoji/mazec/converter/ConvertResult;
.end method

.method public static createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/mazec/MazecConfig;->getConversionUserDictionary(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    if-eqz p0, :cond_2

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 31
    :goto_0
    invoke-static {p1, p0}, Lcom/metamoji/mazec/converter/ConvertEngine;->createJNI(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_3

    return-object v0

    .line 37
    :cond_3
    new-instance v0, Lcom/metamoji/mazec/converter/ConvertEngine;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/converter/ConvertEngine;-><init>(J)V

    return-object v0
.end method

.method protected static native createJNI(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected static native destroyJNI(J)V
.end method

.method protected static native predictJNI(JJLjava/lang/String;JJ)Lcom/metamoji/mazec/converter/ConvertResult;
.end method

.method protected static native removeUserWordJNI(JJ)Z
.end method

.method protected static native resetJNI(J)V
.end method

.method protected static native userWordsJNI(J)[Lcom/metamoji/mazec/converter/MmjiWord;
.end method


# virtual methods
.method public addUserWord(Lcom/metamoji/mazec/converter/MmjiWord;)Z
    .locals 4

    .line 159
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/MmjiWord;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/converter/ConvertEngine;->addUserWordJNI(JJ)Z

    move-result p1

    return p1
.end method

.method public addUserWords(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/converter/MmjiWord;",
            ">;)Z"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/converter/MmjiWord;

    add-int/lit8 v3, v1, 0x1

    .line 147
    invoke-virtual {v2}, Lcom/metamoji/mazec/converter/MmjiWord;->getHandle()J

    move-result-wide v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 149
    :cond_0
    iget-wide v1, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-static {v1, v2, v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->addUserWordsJNI(J[J)Z

    move-result p1

    return p1
.end method

.method public breakSequence()V
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->breakSequenceJNI(J)V

    return-void
.end method

.method public clearLearnWords()Z
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->clearLearnWordsJNI(J)Z

    move-result v0

    return v0
.end method

.method public clearUserWords()Z
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->clearUserWordsJNI(J)Z

    move-result v0

    return v0
.end method

.method public commit(Lcom/metamoji/mazec/RACConfig;Lcom/metamoji/mazec/converter/MmjiWord;Z)V
    .locals 7

    .line 104
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/RACConfig;->getHandle()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/metamoji/mazec/converter/MmjiWord;->getHandle()J

    move-result-wide v4

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/metamoji/mazec/converter/ConvertEngine;->commitJNI(JJJZ)V

    return-void
.end method

.method public convert(Lcom/metamoji/mazec/RACConfig;Ljava/lang/String;Lcom/metamoji/mazec/RACExecContext;)Lcom/metamoji/mazec/converter/ConvertResult;
    .locals 7

    .line 90
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    .line 91
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACConfig;->getHandle()J

    move-result-wide v2

    if-nez p3, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p3}, Lcom/metamoji/mazec/RACExecContext;->getHandle()J

    move-result-wide v4

    :goto_0
    move-wide v5, v4

    move-object v4, p2

    .line 90
    invoke-static/range {v0 .. v6}, Lcom/metamoji/mazec/converter/ConvertEngine;->convertJNI(JJLjava/lang/String;J)Lcom/metamoji/mazec/converter/ConvertResult;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 5

    .line 65
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 66
    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroyJNI(J)V

    .line 67
    iput-wide v2, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public predict(Lcom/metamoji/mazec/RACConfig;Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;Lcom/metamoji/mazec/RACExecContext;)Lcom/metamoji/mazec/converter/ConvertResult;
    .locals 11

    .line 77
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    .line 78
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACConfig;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-nez p3, :cond_0

    move-wide v6, v4

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p3}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getHandle()J

    move-result-wide v6

    :goto_0
    if-nez p4, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p4}, Lcom/metamoji/mazec/RACExecContext;->getHandle()J

    move-result-wide v4

    :goto_1
    move-wide v9, v6

    move-wide v7, v4

    move-wide v5, v9

    move-object v4, p2

    .line 77
    invoke-static/range {v0 .. v8}, Lcom/metamoji/mazec/converter/ConvertEngine;->predictJNI(JJLjava/lang/String;JJ)Lcom/metamoji/mazec/converter/ConvertResult;

    move-result-object p1

    return-object p1
.end method

.method public removeUserWord(Lcom/metamoji/mazec/converter/MmjiWord;)Z
    .locals 4

    .line 172
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/MmjiWord;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/mazec/converter/ConvertEngine;->removeUserWordJNI(JJ)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->resetJNI(J)V

    return-void
.end method

.method public userWords()[Lcom/metamoji/mazec/converter/MmjiWord;
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertEngine;->hConverter:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->userWordsJNI(J)[Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    new-array v0, v0, [Lcom/metamoji/mazec/converter/MmjiWord;

    :cond_0
    return-object v0
.end method
