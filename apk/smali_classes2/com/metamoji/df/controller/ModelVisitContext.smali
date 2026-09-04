.class public Lcom/metamoji/df/controller/ModelVisitContext;
.super Ljava/lang/Object;
.source "ModelVisitContext.java"


# instance fields
.field private _cancelled:Z

.field private _visitedModelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private _visitor:Lcom/metamoji/df/controller/IModelVisitor;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/IModelVisitor;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_cancelled:Z

    .line 43
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    .line 44
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_visitedModelSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getVisitedModelSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_visitedModelSet:Ljava/util/Set;

    return-object v0
.end method

.method public getVisitor()Lcom/metamoji/df/controller/IModelVisitor;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_cancelled:Z

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ModelVisitContext;->_cancelled:Z

    return-void
.end method
