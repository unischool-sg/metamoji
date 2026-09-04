.class public Lcom/metamoji/mazec/converter/ConvertResult;
.super Ljava/lang/Object;
.source "ConvertResult.java"


# static fields
.field public static final CAND_TYPE_CHARACTER:I = 0x4

.field public static final CAND_TYPE_CONVERSION:I = 0x2

.field public static final CAND_TYPE_CORRECTION:I = 0x3

.field public static final CAND_TYPE_INPUT:I = 0x0

.field public static final CAND_TYPE_PREDICTION:I = 0x1


# instance fields
.field private hResult:J

.field private mAdditionalCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/converter/MmjiWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/metamoji/mazec/converter/ConvertResult;->mAdditionalCandidates:Ljava/util/List;

    .line 25
    iput-wide p1, p0, Lcom/metamoji/mazec/converter/ConvertResult;->hResult:J

    return-void
.end method

.method protected static native destroyJNI(J)V
.end method

.method protected static native getCandidatesJNI(J[I)[Lcom/metamoji/mazec/converter/MmjiWord;
.end method

.method protected static native getInputJNI(J)Ljava/lang/String;
.end method


# virtual methods
.method public addAditionalCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/mazec/converter/ConvertResult;->mAdditionalCandidates:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/converter/ConvertResult;->mAdditionalCandidates:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/converter/ConvertResult;->mAdditionalCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 40
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertResult;->hResult:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 41
    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertResult;->destroyJNI(J)V

    .line 42
    iput-wide v2, p0, Lcom/metamoji/mazec/converter/ConvertResult;->hResult:J

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

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/mazec/converter/ConvertResult;->destroy()V

    .line 33
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCandidates([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/converter/MmjiWord;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-wide v1, p0, Lcom/metamoji/mazec/converter/ConvertResult;->hResult:J

    invoke-static {v1, v2, p1}, Lcom/metamoji/mazec/converter/ConvertResult;->getCandidatesJNI(J[I)[Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    array-length v1, p1

    if-lez v1, :cond_0

    .line 75
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/converter/ConvertResult;->mAdditionalCandidates:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/metamoji/mazec/converter/ConvertResult;->mAdditionalCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/ConvertResult;->hResult:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/ConvertResult;->getInputJNI(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
