.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;->run(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1$1;->this$3:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 236
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1$1;->this$3:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 234
    iget-object p1, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;

    iget-object p1, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;

    iget-object p1, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    return-void

    .line 236
    :cond_0
    iget-object p1, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;

    iget-object p1, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;

    iget-object p1, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    iget-object p2, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1$1;->this$3:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;

    iget-object p2, p2, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;

    iget-object p2, p2, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;

    iget-object p2, p2, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->reflectOfflineEdit(Lcom/metamoji/nt/NtNoteController;Z)V

    return-void
.end method
