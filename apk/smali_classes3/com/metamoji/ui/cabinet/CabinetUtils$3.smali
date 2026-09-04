.class Lcom/metamoji/ui/cabinet/CabinetUtils$3;
.super Ljava/lang/Object;
.source "CabinetUtils.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cmdAfterShareNoteOpenedInfo:Ljava/util/Map;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$finalCallBack:Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;

.field final synthetic val$isReadOnly:Z

.field final synthetic val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field final synthetic val$pageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1264
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$finalCallBack:Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$pageId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$isReadOnly:Z

    iput-object p6, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iput-object p7, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$cmdAfterShareNoteOpenedInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncEnd(Z)Z
    .locals 6

    .line 1268
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$finalCallBack:Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 1272
    :try_start_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->CABINET_MSG_NOT_ACCESS_TO_NOTE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1361
    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    :cond_0
    return v2

    .line 1276
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$docId:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 1278
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isAvailableDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1279
    const-string/jumbo v4, "status"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1280
    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz p1, :cond_a

    if-nez v3, :cond_3

    goto :goto_1

    .line 1287
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$docId:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->isCanEditDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1288
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJ_CANT_EDIT_MIMETYPE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 1361
    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    :cond_4
    return v2

    .line 1292
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1293
    instance-of v3, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v3, :cond_9

    .line 1295
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1296
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$docId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$pageId:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v4}, Lcom/metamoji/nt/NtEditorWindowController;->isEdittingDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    .line 1361
    invoke-interface {v0, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    :cond_6
    return v2

    :cond_7
    if-eqz v0, :cond_8

    .line 1318
    :try_start_3
    invoke-interface {v0, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    const/4 v0, 0x0

    .line 1323
    :cond_8
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$pageId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$isReadOnly:Z

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-static {p1, v1, v3, v4, v5}, Lcom/metamoji/nt/NtEditorWindowController;->openDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_e

    .line 1324
    instance-of v3, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v3, :cond_e

    .line 1325
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils$3$1;-><init>(Lcom/metamoji/ui/cabinet/CabinetUtils$3;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1282
    :cond_a
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->CABINET_MSG_NOT_ACCESS_TO_NOTE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_b

    .line 1361
    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    :cond_b
    return v2

    .line 1346
    :cond_c
    :try_start_4
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez p1, :cond_d

    .line 1349
    sget p1, Lcom/metamoji/noteanytime/R$string;->CABINET_MSG_NOT_ACCESS_TO_DRIVE:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_e

    .line 1352
    instance-of p1, v3, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p1, :cond_e

    .line 1353
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$3;->val$driveId:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeCurrentDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move v1, v2

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 1361
    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    :cond_f
    return v2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_10

    invoke-interface {v0, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$INavigateCallBackBlock;->done(Z)V

    .line 1363
    :cond_10
    throw p1
.end method
