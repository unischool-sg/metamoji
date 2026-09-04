.class public Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
.super Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.source "DvmDMResultWithOfflineFlag.java"


# instance fields
.field private m_isOffline:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->m_isOffline:Z

    return-void
.end method


# virtual methods
.method public initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    const-string v0, "isOffline"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->m_isOffline:Z

    :cond_0
    return-object p0
.end method

.method public isOffline()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->m_isOffline:Z

    return v0
.end method
