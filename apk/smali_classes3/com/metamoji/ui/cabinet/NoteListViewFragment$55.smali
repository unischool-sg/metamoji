.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editCopiedNoteInDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$appendDocIds:Ljava/util/ArrayList;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$documentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$newTitle:Ljava/lang/String;

.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/cm/CmTaskManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6512
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$documentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$driveId:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$newTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$appendDocIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6516
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 6517
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 6518
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 6519
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$documentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$docId:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;)V

    new-instance v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 6563
    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    return-void
.end method
