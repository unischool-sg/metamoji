.class public Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "NtInsertPagesDirectionData.java"


# static fields
.field private static final MMJNT_MODELPROPVALUE_INSERTPAGESDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJNT_MODELPROP_INSERTPAGESDIRECTION_INSERTION_LIST:Ljava/lang/String; = "il"

.field private static final MMJNT_MODELPROP_INSERTPAGESDIRECTION_PAGE_ID:Ljava/lang/String; = "pid"

.field private static final MMJNT_MODELTYPE_INSERTPAGESDIRECTION:Ljava/lang/String; = "insertpagesdirection"


# instance fields
.field private m_hiddenPrivateLayerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_pageInsertionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 64
    const-string v1, "il"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    if-nez p1, :cond_1

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    .line 72
    :cond_1
    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 175
    const-string v0, "insertpagesdirection"

    invoke-static {p0, v0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;
    .locals 1

    .line 49
    const-string v0, "insertpagesdirection"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 50
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 51
    new-instance v0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    .line 78
    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    .line 79
    invoke-super {p0}, Lcom/metamoji/ns/direction/NsDirectionData;->destroy()V

    return-void
.end method

.method public getDirection()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_direction:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/df/model/IModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDirection()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->getDirection()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public hidePrivateLayers()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->restoreHiddenPrivateLayers()V

    .line 114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 117
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->pageModelsAtIndex(I)Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 119
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getLastChild()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getPrevSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 122
    const-string v6, "$layer"

    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    const-string v6, "layerType"

    invoke-interface {v4, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    const-string/jumbo v7, "system:private"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v6, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v6, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    move-object v4, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public insertPageModels(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p2, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->getDirection()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string p2, "il"

    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public insertionCount()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pageModelsAtIndex(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public refPageIDAtIndex(I)Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_pageInsertionList:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public resolvePageModelCompatibility()Z
    .locals 9

    .line 205
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibility()Lcom/metamoji/df/controller/ModelCompatibility;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibilityTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertionCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 210
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->pageModelsAtIndex(I)Ljava/util/List;

    move-result-object v5

    .line 211
    invoke-virtual {v0, v5, v1}, Lcom/metamoji/df/controller/ModelCompatibility;->checkCompatibility(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v6

    .line 212
    iget-object v7, v6, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v8, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v7, v8, :cond_0

    .line 214
    invoke-virtual {v0, v5, v1}, Lcom/metamoji/df/controller/ModelCompatibility;->convert(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v5

    .line 215
    iget-object v5, v5, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v6, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-eq v5, v6, :cond_1

    return v3

    .line 219
    :cond_0
    iget-object v5, v6, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v6, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v5, v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHiddenPrivateLayers()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 147
    iget-object v1, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 148
    iget-object v3, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 149
    iget-object v4, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    if-nez v3, :cond_1

    .line 151
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 152
    :goto_1
    invoke-interface {v1, v3, v2}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->m_hiddenPrivateLayerList:Ljava/util/List;

    return-void
.end method
