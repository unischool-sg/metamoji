.class Lcom/metamoji/nt/NtNoteController$71;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$currentPage:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$updateSchoolUserList:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 10416
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$71;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$71;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    iput-boolean p3, p0, Lcom/metamoji/nt/NtNoteController$71;->val$updateSchoolUserList:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10419
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$71;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->makeLayersForSchool()V

    .line 10422
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10424
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$71;->val$updateSchoolUserList:Z

    if-eqz v1, :cond_0

    .line 10425
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolUserList()V

    .line 10430
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$71;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->correctCurrentPageLayer()V

    .line 10433
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctPersonalMode()V

    return-void
.end method
