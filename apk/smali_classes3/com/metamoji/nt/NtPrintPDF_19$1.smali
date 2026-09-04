.class Lcom/metamoji/nt/NtPrintPDF_19$1;
.super Ljava/lang/Object;
.source "NtPrintPDF_19.java"

# interfaces
.implements Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPrintPDF_19;->export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/nt/NtPDFExportRangeTargetPages;Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$1;->val$adapter:Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;

    iput-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/metamoji/nt/NtPDFExportTargetContext;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$1;->val$adapter:Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;

    iget-object v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->write(Lcom/metamoji/nt/NtPDFExportTargetContext;Ljava/io/OutputStream;)V

    return-void
.end method
