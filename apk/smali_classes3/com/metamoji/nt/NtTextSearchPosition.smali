.class public Lcom/metamoji/nt/NtTextSearchPosition;
.super Ljava/lang/Object;
.source "NtTextSearchPosition.java"


# instance fields
.field _modelType:Ljava/lang/String;

.field _positionInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_positionInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_modelType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getPosInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_positionInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_positionInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setModelType(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_modelType:Ljava/lang/String;

    return-void
.end method

.method public setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchPosition;->_positionInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
