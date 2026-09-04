.class public final synthetic Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/metamoji/cm/Blob;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt;->getPdfDocument$lambda$0(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/Blob;)Lcom/metamoji/un/pdf/PdfDocumentRef;

    move-result-object p1

    return-object p1
.end method
