.class Lcom/metamoji/un/text/model/TextModel$4;
.super Ljava/lang/Object;
.source "TextModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/model/TextModel;

.field final synthetic val$onInit:Z


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/model/TextModel;Z)V
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

    .line 4555
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel$4;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iput-boolean p2, p0, Lcom/metamoji/un/text/model/TextModel$4;->val$onInit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4557
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$4;->this$0:Lcom/metamoji/un/text/model/TextModel;

    invoke-static {v0}, Lcom/metamoji/un/text/model/TextModel;->-$$Nest$misAlive(Lcom/metamoji/un/text/model/TextModel;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4561
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel$4;->this$0:Lcom/metamoji/un/text/model/TextModel;

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/TextModel$4;->val$onInit:Z

    invoke-static {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->-$$Nest$mtimerFireMethodForDelayLTMaintain(Lcom/metamoji/un/text/model/TextModel;Z)V

    return-void
.end method
