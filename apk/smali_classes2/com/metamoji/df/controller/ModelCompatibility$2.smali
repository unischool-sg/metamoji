.class Lcom/metamoji/df/controller/ModelCompatibility$2;
.super Ljava/lang/Object;
.source "ModelCompatibility.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/ModelCompatibility;->newDetailCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
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

    .line 298
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibility$2;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 3

    .line 301
    check-cast p2, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    .line 302
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/metamoji/df/controller/ModelCompatibility$2;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-static {v1}, Lcom/metamoji/df/controller/ModelCompatibility;->-$$Nest$fget_checkers(Lcom/metamoji/df/controller/ModelCompatibility;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/IModelCompatibilityChecker;

    if-eqz v1, :cond_1

    .line 306
    invoke-interface {v1, p1}, Lcom/metamoji/df/controller/IModelCompatibilityChecker;->checkDetailCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    .line 307
    iget-object v1, p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v2, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-eq v1, v2, :cond_1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[checkDetailCompatibility] not compatible. (handler returns %s on type \'%s\')"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p2, p1}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V

    .line 310
    iget-object p1, p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setCancelled(Z)V

    :cond_1
    return-void
.end method
