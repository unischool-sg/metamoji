.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 230
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;->this$2:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;

    iget-object v0, p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1;->val$message:Ljava/lang/String;

    sget p1, Lcom/metamoji/noteanytime/R$string;->dialog_button_ok:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REMOVE_OFFLINE_EDIT:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1$1;

    invoke-direct {v4, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1$1$1;)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cm/CmUtils;->selectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
