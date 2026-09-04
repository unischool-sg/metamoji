.class Lcom/metamoji/ui/dialog/PDFImportOption$3;
.super Ljava/lang/Object;
.source "PDFImportOption.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 138
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$3;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$3;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/PDFImportOption;->-$$Nest$mupdatePreview(Lcom/metamoji/ui/dialog/PDFImportOption;)V

    return-void
.end method
