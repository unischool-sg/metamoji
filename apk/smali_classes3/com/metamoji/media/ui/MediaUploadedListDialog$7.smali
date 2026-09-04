.class Lcom/metamoji/media/ui/MediaUploadedListDialog$7;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 588
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$7;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 591
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$7;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mnextTrack(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    return-void
.end method
