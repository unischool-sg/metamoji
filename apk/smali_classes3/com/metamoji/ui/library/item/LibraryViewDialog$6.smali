.class Lcom/metamoji/ui/library/item/LibraryViewDialog$6;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog;->selectPart(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

.field final synthetic val$partDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1074
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->val$partDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1078
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->val$partDic:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->selectPartInner(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->val$partDic:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lb/LbConstants$LbPageType;

    if-nez v1, :cond_0

    .line 1082
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 1083
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v2

    .line 1084
    invoke-virtual {v2, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->isSharedDriveData(Lcom/metamoji/lb/LbConstants$LbPageType;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1085
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 1086
    invoke-virtual {v3, v0, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    .line 1090
    :cond_1
    invoke-virtual {v2, v4, v0, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->getLibraryItem(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1092
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$1;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$6;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 1107
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$6;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v1, v1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v2, "storageFile"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1110
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$2;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$6;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 1119
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$6$3;-><init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$6;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
