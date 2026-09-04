.class Lcom/metamoji/ui/cabinet/CabinetUtils$4$1;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetUtils$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1401
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1408
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$4;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1405
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$driveId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->setDriveHidden(Ljava/lang/String;Z)V

    .line 1406
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$4;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->autoSyncAdditionalDrive(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void

    .line 1408
    :cond_0
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    invoke-interface {p1, v0}, Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;->syncEnd(Z)Z

    return-void
.end method
