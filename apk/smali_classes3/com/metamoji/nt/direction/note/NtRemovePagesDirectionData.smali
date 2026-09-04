.class public Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtRemovePagesDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_REMOVEPAGESDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_REMOVEPAGESDIRECTION_PAGE_ID_LIST:Ljava/lang/String; = "pil"

.field private static final MMJNT_MODELTYPE_REMOVEPAGESDIRECTION:Ljava/lang/String; = "removepagesdirection"


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 76
    const-string v0, "removepagesdirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;
    .locals 2

    .line 43
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string v0, "!type"

    const-string v1, "removepagesdirection"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDirection()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removePageIDs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pil"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRemovePageIDs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->getDirection()Ljava/util/Map;

    move-result-object v0

    const-string v1, "pil"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
