.class Lcom/metamoji/nt/NtEditorWindowController$24;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->selectTargetPages(Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$callBackBlock:Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;)V
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

    .line 3254
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$24;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$24;->val$callBackBlock:Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3257
    sget-object p1, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->All:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 3264
    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->After:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    goto :goto_0

    .line 3261
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;->Current:Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;

    .line 3267
    :goto_0
    iget-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$24;->val$callBackBlock:Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$24;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->getTargetPages(Lcom/metamoji/nt/NtEditorWindowController$PageStyleTarget;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;->done(Ljava/util/List;)V

    :cond_2
    return-void
.end method
