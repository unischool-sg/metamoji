.class Lcom/metamoji/nt/NtNoteController$48;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleCopyPage(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$pages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V
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

    .line 5913
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$48;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$48;->val$pages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5917
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$48;->val$pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 5918
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$48;->val$pages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5921
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$48;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$48;->val$pages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mcopyPagesCore(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V

    return-void
.end method
