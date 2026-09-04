.class Lcom/metamoji/ns/NsCollaboUtils$7$1;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboUtils$7;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboUtils$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$7$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$7$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$7;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUtils$7;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 484
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboUtils$7$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$7;

    iget-object p2, p2, Lcom/metamoji/ns/NsCollaboUtils$7;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->reflectOfflineEdit(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 486
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$7$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$7;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUtils$7;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$7$1;->this$0:Lcom/metamoji/ns/NsCollaboUtils$7;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUtils$7;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_1
    return-void
.end method
