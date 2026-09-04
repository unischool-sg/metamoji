.class public Lcom/metamoji/mazec/RACConfig;
.super Ljava/lang/Object;
.source "RACConfig.java"


# static fields
.field public static KANJI_RECOGNITION_MODE_DEFAULT:I = 0x0

.field public static KANJI_RECOGNITION_MODE_LEARNED_PRECED:I = 0x2

.field public static KANJI_RECOGNITION_MODE_ONLY_LEARNED:I = 0x1

.field public static SCHOOL_YEAR_CHUGAKU:I = 0x7

.field public static SCHOOL_YEAR_SHOGAKU1:I = 0x1

.field public static SCHOOL_YEAR_SHOGAKU2:I = 0x2

.field public static SCHOOL_YEAR_SHOGAKU3:I = 0x3

.field public static SCHOOL_YEAR_SHOGAKU4:I = 0x4

.field public static SCHOOL_YEAR_SHOGAKU5:I = 0x5

.field public static SCHOOL_YEAR_SHOGAKU6:I = 0x6

.field public static SCHOOL_YEAR_UNSPECIFIED:I


# instance fields
.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/metamoji/mazec/RACConfig;->createJNI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    return-void
.end method

.method public static native createJNI()J
.end method

.method protected static native destroyJNI(J)V
.end method

.method protected static native getLanguageJNi(J)Ljava/lang/String;
.end method

.method protected static native setConversionEnabledJNI(JZ)V
.end method

.method protected static native setConversionLearningEnabledJNI(JZ)V
.end method

.method protected static native setFilterJNI(JI)V
.end method

.method protected static native setLanguageJNI(JLjava/lang/String;)V
.end method

.method protected static native setRecognitionConfigJNI(JII)V
.end method

.method protected static native setRecognitionUserDictionaryClearFlagsJNI(JZZ)V
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 34
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 35
    invoke-static {v0, v1}, Lcom/metamoji/mazec/RACConfig;->destroyJNI(J)V

    .line 36
    iput-wide v2, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

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

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/mazec/RACConfig;->dispose()V

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getHandle()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/RACConfig;->getLanguageJNi(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConversionEnabled(Z)V
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/RACConfig;->setConversionEnabledJNI(JZ)V

    return-void
.end method

.method public setConversionLearningEnabled(Z)V
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/RACConfig;->setConversionLearningEnabledJNI(JZ)V

    return-void
.end method

.method public setFilter(I)V
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/RACConfig;->setFilterJNI(JI)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/RACConfig;->setLanguageJNI(JLjava/lang/String;)V

    return-void
.end method

.method public setRecognitionConfig(II)V
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/mazec/RACConfig;->setRecognitionConfigJNI(JII)V

    return-void
.end method

.method public setRecognitionUserDictionaryClearFlags(ZZ)V
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/metamoji/mazec/RACConfig;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/mazec/RACConfig;->setRecognitionUserDictionaryClearFlagsJNI(JZZ)V

    return-void
.end method
