.class Lcom/metamoji/media/ui/MediaUploadedListDialog$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 499
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$1;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$1;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mupdatePosition(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    return-void
.end method
