.class Lcom/metamoji/ui/dialog/DocumentSettings2$3;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$3;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Ljava/lang/Boolean;Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 0

    .line 417
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 418
    check-cast p2, Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/HeaderFooter;->get_text()Ljava/lang/String;

    move-result-object p0

    .line 419
    move-object p2, p1

    check-cast p2, Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p2

    iput-object p0, p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_header:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 412
    new-instance p1, Lcom/metamoji/ui/dialog/HeaderFooter;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/HeaderFooter;-><init>()V

    .line 413
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Header:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->set_dlgtitleid(I)V

    .line 414
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$3;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/HeaderFooter;->set_string(Ljava/lang/String;)V

    .line 415
    new-instance v0, Lcom/metamoji/ui/dialog/NtDialogTask;

    const-string v1, "HeaderFooterDialog"

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/NtDialogTask;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$3;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2$3$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/DocumentSettings2$3$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
