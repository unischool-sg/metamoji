.class Lcom/metamoji/nt/NtEditorWindowController$31;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->selectReadonlyAndOpenDocument(Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4170
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$31;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtEditorWindowController$31;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 4174
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$31;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtMRUDocList;->setReadOnly(Lcom/metamoji/nt/NtMRUDocList$Item;Z)Z

    .line 4176
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$31;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    iget-boolean p2, p0, Lcom/metamoji/nt/NtEditorWindowController$31;->val$retry:Z

    invoke-static {p1, p2, v0}, Lcom/metamoji/nt/NtEditorWindowController;->openDocumentFromTab(Lcom/metamoji/nt/NtMRUDocList$Item;ZZ)V

    return-void
.end method
