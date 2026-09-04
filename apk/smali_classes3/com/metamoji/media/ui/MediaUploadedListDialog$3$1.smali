.class Lcom/metamoji/media/ui/MediaUploadedListDialog$3$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$3;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$3$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$3$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$3;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$3;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mdeleteItems(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    :cond_0
    return-void
.end method
