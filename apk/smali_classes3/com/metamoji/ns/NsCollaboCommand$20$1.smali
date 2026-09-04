.class Lcom/metamoji/ns/NsCollaboCommand$20$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$20;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$20;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$20;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1578
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$20$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1581
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1586
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1590
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$20$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$20;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$20;->val$addressArray:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtShare;->shareAsText(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
