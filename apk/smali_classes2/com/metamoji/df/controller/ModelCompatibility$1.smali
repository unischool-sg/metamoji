.class Lcom/metamoji/df/controller/ModelCompatibility$1;
.super Ljava/lang/Object;
.source "ModelCompatibility.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/ModelCompatibility;->newCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
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

    .line 256
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibility$1;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 6

    .line 259
    check-cast p2, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    .line 261
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/metamoji/df/controller/ModelCompatibility$1;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-static {v1}, Lcom/metamoji/df/controller/ModelCompatibility;->-$$Nest$fget_checkers(Lcom/metamoji/df/controller/ModelCompatibility;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/IModelCompatibilityChecker;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 265
    invoke-interface {v1, p1}, Lcom/metamoji/df/controller/IModelCompatibilityChecker;->checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v1

    .line 266
    iget-object v4, v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v5, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-eq v4, v5, :cond_1

    .line 267
    const-string v4, "[checkCompatibility] not compatible. (handler returns %s on type \'%s\')"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p2, v1}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V

    .line 269
    iget-object v0, v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v4, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setCancelled(Z)V

    .line 271
    :cond_1
    iget-boolean v0, v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isSaveOnEnd:Z

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p2, v1}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x24

    if-ne v1, v3, :cond_3

    .line 279
    const-string v1, "[checkCompatibility] not compatible.(handler not installed for type \'%s\')"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V

    .line 281
    invoke-virtual {p2, v2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setCancelled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibility$1;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getOutUsedVersionInfo()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/df/controller/ModelCompatibility;->addToUsedVersionInfo(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/controller/ModelCompatibility$1;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getOutUsedVersionInfo()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Lcom/metamoji/df/controller/ModelCompatibility;->addToUsedVersionInfo(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    .line 286
    throw v0
.end method
