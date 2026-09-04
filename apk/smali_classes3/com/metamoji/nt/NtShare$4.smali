.class Lcom/metamoji/nt/NtShare$4;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$4;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$4;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$4;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$4;->val$doc:Lcom/metamoji/nt/NtDocument;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$4;->val$baseName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtShare;->getAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtShare$4;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    const-string v2, "image/jpeg"

    invoke-interface {v1, v0, v2}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFiles(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
