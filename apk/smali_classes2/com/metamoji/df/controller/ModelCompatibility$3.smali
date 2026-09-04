.class Lcom/metamoji/df/controller/ModelCompatibility$3;
.super Ljava/lang/Object;
.source "ModelCompatibility.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/ModelCompatibility;->newConvertContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/ModelCompatibility;


# direct methods
.method constructor <init>(Lcom/metamoji/df/controller/ModelCompatibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibility$3;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 5

    .line 327
    check-cast p2, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    .line 329
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/metamoji/df/controller/ModelCompatibility$3;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-static {v1}, Lcom/metamoji/df/controller/ModelCompatibility;->-$$Nest$fget_checkers(Lcom/metamoji/df/controller/ModelCompatibility;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/IModelCompatibilityChecker;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 333
    invoke-interface {v1, p1}, Lcom/metamoji/df/controller/IModelCompatibilityChecker;->convertModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v0

    .line 334
    iget-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v4, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-eq v1, v4, :cond_2

    .line 335
    invoke-virtual {p2, v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V

    .line 336
    iget-object v0, v0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setCancelled(Z)V

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 343
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V

    .line 344
    invoke-virtual {p2, v2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setCancelled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibility$3;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getOutUsedVersionInfo()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/df/controller/ModelCompatibility;->addToUsedVersionInfo(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/controller/ModelCompatibility$3;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getOutUsedVersionInfo()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Lcom/metamoji/df/controller/ModelCompatibility;->addToUsedVersionInfo(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    .line 349
    throw v0
.end method
