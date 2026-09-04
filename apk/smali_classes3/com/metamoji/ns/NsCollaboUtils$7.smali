.class Lcom/metamoji/ns/NsCollaboUtils$7;
.super Ljava/lang/Object;
.source "NsCollaboUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboUtils;->showLoginRoomErrorMessage(Ljava/lang/Exception;Lcom/metamoji/ns/INsCollaboAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboUtils$7;->val$message:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboUtils$7;->val$offlineEditManager:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboUtils$7;->val$action:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 476
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboUtils$7;->val$message:Ljava/lang/String;

    sget v1, Lcom/metamoji/noteanytime/R$string;->dialog_button_ok:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REMOVE_OFFLINE_EDIT:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/NsCollaboUtils$7$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/NsCollaboUtils$7$1;-><init>(Lcom/metamoji/ns/NsCollaboUtils$7;)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/metamoji/cm/CmUtils;->selectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
