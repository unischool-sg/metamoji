.class Lcom/metamoji/noteanytime/MainActivity$40;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->copyNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic val$failure:Lcom/metamoji/sd/SdFailureBlock;

.field final synthetic val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

.field final synthetic val$fromDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

.field final synthetic val$success:Lcom/metamoji/sd/SdSuccessBlock;

.field final synthetic val$toDriveId:Ljava/lang/String;

.field final synthetic val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/cm/mutable/MutableBoolean;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2607
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$fromDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$toDriveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$toFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p5, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$success:Lcom/metamoji/sd/SdSuccessBlock;

    iput-object p6, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$failure:Lcom/metamoji/sd/SdFailureBlock;

    iput-object p7, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

    iput-object p8, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p9, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2610
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 2611
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 2612
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 2613
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$fromData:Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    iget-object v2, v2, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_objectIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2614
    iget-object v4, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$fromDocMan:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$40$1;

    invoke-direct {v5, p0, v3}, Lcom/metamoji/noteanytime/MainActivity$40$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$40;Ljava/lang/String;)V

    new-instance v6, Lcom/metamoji/noteanytime/MainActivity$40$2;

    invoke-direct {v6, p0}, Lcom/metamoji/noteanytime/MainActivity$40$2;-><init>(Lcom/metamoji/noteanytime/MainActivity$40;)V

    invoke-virtual {v4, v3, v1, v5, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 2639
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-virtual {v3}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2644
    :cond_1
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$40;->val$isFailure:Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-virtual {v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2645
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$40$3;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$40$3;-><init>(Lcom/metamoji/noteanytime/MainActivity$40;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2654
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    return-void
.end method
