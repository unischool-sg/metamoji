.class public Lcom/metamoji/df/model/ModelManagerCleanupContext;
.super Lcom/metamoji/df/model/ModelManagerSaveContext;
.source "ModelManagerCleanupContext.java"


# instance fields
.field private dropPropertyNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private refModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private skippableModelTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private undestroyableModelFlags:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->undestroyableModelFlags:[Z

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->refModels:Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->dropPropertyNames:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->skippableModelTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDropPropertyNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->dropPropertyNames:Ljava/util/List;

    return-object v0
.end method

.method getRefModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->refModels:Ljava/util/List;

    return-object v0
.end method

.method public getSkippableModelTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->skippableModelTypes:Ljava/util/List;

    return-object v0
.end method

.method isModelUndestroyable(I)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->undestroyableModelFlags:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method readyWithModelCount(I)V
    .locals 0

    .line 31
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->undestroyableModelFlags:[Z

    return-void
.end method

.method public setDropPropertyNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->dropPropertyNames:Ljava/util/List;

    return-void
.end method

.method setModelUndestroyable(I)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->undestroyableModelFlags:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method setRefModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->refModels:Ljava/util/List;

    return-void
.end method

.method public setSkippableModelTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerCleanupContext;->skippableModelTypes:Ljava/util/List;

    return-void
.end method
