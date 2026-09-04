.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleAppendButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Lcom/metamoji/forSchool/ui/ScSelectNote;)V
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

    .line 785
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    .line 790
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result p2

    const-string p3, "driveId"

    const/4 v0, 0x0

    if-ge p1, p2, :cond_1

    .line 791
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 792
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 793
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$1;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;)V

    invoke-virtual {p1, p2, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 802
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 803
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 804
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->Tags:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 807
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->Tags:Ljava/util/List;

    const-string/jumbo p3, "tagList"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->add(Ljava/lang/Object;)V

    .line 811
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->notifyDataSetChanged()V

    .line 814
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_distributeSharedDrives:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 815
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$2;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;)V

    invoke-virtual {p1, p2, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 822
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateDistributeLabel()V

    .line 823
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateGroupSettingButton()V

    .line 824
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->updateAppendAndRemoveButton()V

    :cond_5
    return-void
.end method
