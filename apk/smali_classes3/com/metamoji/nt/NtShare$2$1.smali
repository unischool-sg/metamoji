.class Lcom/metamoji/nt/NtShare$2$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/nt/NtShare$INtShareCreateFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$2;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$pageNoOffset:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$2;ILcom/metamoji/nt/NtNoteController;)V
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

    .line 182
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$2$1;->this$0:Lcom/metamoji/nt/NtShare$2;

    iput p2, p0, Lcom/metamoji/nt/NtShare$2$1;->val$pageNoOffset:I

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$2$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/io/File;I)Ljava/io/File;
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$2$1;->this$0:Lcom/metamoji/nt/NtShare$2;

    iget p1, p1, Lcom/metamoji/nt/NtShare$2;->val$fromPageIndex:I

    add-int/2addr p1, p2

    .line 186
    iget p2, p0, Lcom/metamoji/nt/NtShare$2$1;->val$pageNoOffset:I

    add-int/2addr p2, p1

    .line 188
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$2$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$2$1;->this$0:Lcom/metamoji/nt/NtShare$2;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$2;->val$baseName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/metamoji/nt/NtShare;->getImageAtPage(Lcom/metamoji/nt/NtPageController;ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
