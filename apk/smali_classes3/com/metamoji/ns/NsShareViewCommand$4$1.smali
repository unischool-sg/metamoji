.class Lcom/metamoji/ns/NsShareViewCommand$4$1;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsShareViewCommand$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsShareViewCommand$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$4$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/metamoji/ns/NsShareViewCommand$4$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$4;

    iget-object v0, v0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/metamoji/ns/NsShareViewCommand$4$1;->this$0:Lcom/metamoji/ns/NsShareViewCommand$4;

    iget-object v0, v0, Lcom/metamoji/ns/NsShareViewCommand$4;->val$completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/metamoji/ns/INsShareViewCommandCompletionAction;->onCompleted(ZLjava/util/Map;)V

    :cond_0
    return-void
.end method
