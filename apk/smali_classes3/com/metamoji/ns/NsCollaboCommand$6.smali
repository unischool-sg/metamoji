.class Lcom/metamoji/ns/NsCollaboCommand$6;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createRoomMultiNotesToMultiBoxes(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;Ljava/util/List;ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$distributeSharedDrives:Ljava/util/List;

.field final synthetic val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$6;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$6;->val$distributeSharedDrives:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    .line 502
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$6$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboCommand$6$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$6;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
