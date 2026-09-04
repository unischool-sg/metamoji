.class Lcom/metamoji/ui/dialog/PDFImportOption$1;
.super Ljava/lang/Object;
.source "PDFImportOption.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PDFImportOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PDFImportOption;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PDFImportOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$1;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 110
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$1;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PDFImportOption;->rotationId:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    if-ne v3, p2, :cond_0

    .line 112
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PDFImportOption$1;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/PDFImportOption;->-$$Nest$fgetm_options(Lcom/metamoji/ui/dialog/PDFImportOption;)Lcom/metamoji/nt/NtPDFImportOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtPDFImportOptions;->setRotationIndex(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$1;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/PDFImportOption;->-$$Nest$mupdatePreview(Lcom/metamoji/ui/dialog/PDFImportOption;)V

    return-void
.end method
