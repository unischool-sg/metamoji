.class Lcom/metamoji/un/text/model/TextModel$3;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/TextModel;->remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/model/TextModel;

.field final synthetic val$redrawPosition_:Lcom/metamoji/un/text/model/TextPosition;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2207
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iput-object p2, p0, Lcom/metamoji/un/text/model/TextModel$3;->val$redrawPosition_:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2211
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 2221
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-static {v0}, Lcom/metamoji/un/text/model/TextModel;->-$$Nest$fgetlineTable(Lcom/metamoji/un/text/model/TextModel;)Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-nez v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-static {v0}, Lcom/metamoji/un/text/model/TextModel;->-$$Nest$mgetUnitMinSize(Lcom/metamoji/un/text/model/TextModel;)Lcom/metamoji/cm/SizeF;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2226
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    if-eqz v0, :cond_1

    .line 2230
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iget-object v1, v1, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v1, v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->checkUnitMinSize(Lcom/metamoji/cm/SizeF;)V

    .line 2231
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iget-object v0, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->didEndMakingLineTable()V

    .line 2232
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iget-object v0, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel$3;->val$redrawPosition_:Lcom/metamoji/un/text/model/TextPosition;

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2234
    const-string v1, "RemakeLineTable"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 2226
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel$3;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 2227
    throw v0
.end method
