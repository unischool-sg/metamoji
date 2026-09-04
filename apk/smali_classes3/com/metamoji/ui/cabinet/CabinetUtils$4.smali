.class Lcom/metamoji/ui/cabinet/CabinetUtils$4;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareAccessDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1375
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1378
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$docId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isAvailableDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1379
    const-string/jumbo v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1380
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->autoSyncAdditionalDrive(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void

    .line 1396
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CABINET_HIDDENBOX_CONFIRM:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 1397
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "driveName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v7

    .line 1399
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v8

    .line 1400
    new-instance v4, Lcom/metamoji/ui/cabinet/CabinetUtils$4$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$4$1;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$4;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, ""

    invoke-static/range {v2 .. v8}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1388
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->autoSyncWithDriveId(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void

    .line 1384
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    invoke-interface {v0, v2}, Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;->syncEnd(Z)Z

    return-void

    .line 1415
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$4;->val$callBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;->syncEnd(Z)Z

    return-void
.end method
