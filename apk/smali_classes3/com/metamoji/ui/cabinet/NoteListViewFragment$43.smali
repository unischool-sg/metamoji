.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isDragDrop:Z

.field final synthetic val$isReadOnly:Z

.field final synthetic val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

.field final synthetic val$reacquisition:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4786
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$opener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;

    iput-boolean p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$reacquisition:Z

    iput-boolean p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$isReadOnly:Z

    iput-boolean p7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$isDragDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 4790
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 4791
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 4792
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 4794
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$driveId:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v2

    .line 4795
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;->val$docId:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/sd/SdDriveDocumentManager;)V

    new-instance v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;

    invoke-direct {v5, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;Lcom/metamoji/nt/cabinet/cabinetWaitView;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method
