.class Lcom/metamoji/ui/dialog/DocumentThumbnail$1;
.super Ljava/lang/Object;
.source "DocumentThumbnail.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentThumbnail;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentThumbnail;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentThumbnail;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$1;->this$0:Lcom/metamoji/ui/dialog/DocumentThumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 74
    sget p1, Lcom/metamoji/noteanytime/R$id;->dlg_doc_thumb_btn_use:I

    .line 77
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$1;->this$0:Lcom/metamoji/ui/dialog/DocumentThumbnail;

    if-ne p2, p1, :cond_0

    .line 75
    iget-object p1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, v0, Lcom/metamoji/ui/dialog/DocumentThumbnail;->_param:Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$1;->this$0:Lcom/metamoji/ui/dialog/DocumentThumbnail;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->-$$Nest$mchangeEnable(Lcom/metamoji/ui/dialog/DocumentThumbnail;)V

    return-void
.end method
