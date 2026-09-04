.class Lcom/metamoji/ui/dialog/DocumentSettings2$5;
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

.field final synthetic val$dlg:Landroid/view/View;

.field final synthetic val$noThumbText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Landroid/view/View;Ljava/lang/String;)V
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

    .line 492
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->val$dlg:Landroid/view/View;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->val$noThumbText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/view/View;Ljava/lang/String;Ljava/lang/Boolean;Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 2

    .line 505
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 506
    check-cast p4, Lcom/metamoji/ui/dialog/DocumentThumbnail;

    .line 507
    check-cast p3, Lcom/metamoji/ui/dialog/DocumentSettings2;

    .line 509
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->get_param()Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    move-result-object p2

    .line 510
    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p4

    iget-boolean v1, p2, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    iput-boolean v1, p4, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    .line 511
    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p4

    iget-boolean p4, p4, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    if-eqz p4, :cond_0

    .line 512
    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p4

    iget-object v1, p2, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p4, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    .line 513
    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p4

    iget-object p2, p2, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUri:Ljava/lang/String;

    iput-object p2, p4, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUri:Ljava/lang/String;

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p2

    iput-object v0, p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    .line 516
    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p2

    iput-object v0, p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUri:Ljava/lang/String;

    .line 518
    :goto_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_img_thumb:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p4

    iget-object p4, p4, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 519
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_set2_btn_thumb:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/common/UiButton;

    invoke-static {p3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object p2

    iget-object p2, p2, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 495
    sget-object p1, Lcom/metamoji/ui/dialog/DocumentThumbnail;->TAG:Ljava/lang/String;

    .line 500
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentThumbnail;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentThumbnail;-><init>()V

    .line 501
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->set_bgImageUsed(Z)V

    .line 502
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/DocumentSettings2;)Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->set_bgImage(Landroid/graphics/Bitmap;)V

    .line 503
    new-instance v1, Lcom/metamoji/ui/dialog/NtDialogTask;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/dialog/NtDialogTask;-><init>(Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->val$dlg:Landroid/view/View;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$5;->val$noThumbText:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/ui/dialog/DocumentSettings2$5$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2$5$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v4}, Lcom/metamoji/ui/dialog/NtDialogTask;->javaShowDialog(Lcom/metamoji/lib/dialog/UtDialog;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
