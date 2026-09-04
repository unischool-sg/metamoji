.class Lcom/metamoji/nt/NtShare$7;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/metamoji/nt/NtShare$ISendAction;

.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$doc:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$pages:[I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$7;->val$doc:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$7;->val$pages:[I

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$7;->val$baseName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$7;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 480
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$7;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$7;->val$pages:[I

    iget-object v3, p0, Lcom/metamoji/nt/NtShare$7;->val$baseName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/NtPrintPDF;->export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;[ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v4, p0, Lcom/metamoji/nt/NtShare$7;->val$action:Lcom/metamoji/nt/NtShare$ISendAction;

    iget-object v0, p0, Lcom/metamoji/nt/NtShare$7;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "application/pdf"

    invoke-interface/range {v4 .. v9}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
