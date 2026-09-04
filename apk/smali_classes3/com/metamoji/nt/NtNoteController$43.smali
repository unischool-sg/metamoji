.class Lcom/metamoji/nt/NtNoteController$43;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->pastePageFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$errorMessage:[Ljava/lang/String;

.field final synthetic val$inDocModelManager:Lcom/metamoji/df/model/IModelManager;

.field final synthetic val$pageIndex:I

.field final synthetic val$showWaitScreenImmediately:Z

.field final synthetic val$updateThumbnail:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;ZLcom/metamoji/df/model/IModelManager;IZ[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5625
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$43;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtNoteController$43;->val$showWaitScreenImmediately:Z

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$43;->val$inDocModelManager:Lcom/metamoji/df/model/IModelManager;

    iput p4, p0, Lcom/metamoji/nt/NtNoteController$43;->val$pageIndex:I

    iput-boolean p5, p0, Lcom/metamoji/nt/NtNoteController$43;->val$updateThumbnail:Z

    iput-object p6, p0, Lcom/metamoji/nt/NtNoteController$43;->val$errorMessage:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 5632
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$43;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$43;->val$inDocModelManager:Lcom/metamoji/df/model/IModelManager;

    iget v2, p0, Lcom/metamoji/nt/NtNoteController$43;->val$pageIndex:I

    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController$43;->val$updateThumbnail:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtNoteController;->pastePageInnrFromModelManager(Lcom/metamoji/df/model/IModelManager;IZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5634
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$43;->val$errorMessage:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method
