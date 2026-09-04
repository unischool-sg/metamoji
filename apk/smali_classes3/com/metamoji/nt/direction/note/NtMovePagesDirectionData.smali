.class public Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtMovePagesDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_MOVEPAGESDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_MOVEPAGESDIRECTION_MOVE_LIST:Ljava/lang/String; = "ml"

.field private static final MMJNT_MODELPROP_MOVEPAGESDIRECTION_PAGE_ID:Ljava/lang/String; = "pid"

.field private static final MMJNT_MODELTYPE_MOVEPAGESDIRECTION:Ljava/lang/String; = "movepagesdirection"


# instance fields
.field private m_pageMoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 57
    const-string v0, "ml"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 126
    const-string v0, "movepagesdirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;
    .locals 2

    .line 46
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v0, "!type"

    const-string v1, "movepagesdirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    .line 71
    invoke-super {p0}, Lcom/metamoji/ns/direction/NsDirectionData;->destroy()V

    return-void
.end method

.method public bridge synthetic getDirection()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->getDirection()Ljava/util/Map;

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

    .line 116
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public movePage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->movePagesNoCopy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public movePages(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->movePagesNoCopy(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public movePagesNoCopy(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p2, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->getDirection()Ljava/util/Map;

    move-result-object p1

    const-string p2, "ml"

    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pageIDsAtIndex(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public refPageIDAtIndex(I)Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtMovePagesDirectionData;->m_pageMoveList:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
