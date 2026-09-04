.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->exportNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$docTitle:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5131
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$driveId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 5134
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 5135
    new-instance v1, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 5136
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 5137
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;->val$docId:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;)V

    new-instance v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$2;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47$2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 5174
    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    return-void
.end method
