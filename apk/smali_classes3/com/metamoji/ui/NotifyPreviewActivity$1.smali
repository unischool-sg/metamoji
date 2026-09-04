.class Lcom/metamoji/ui/NotifyPreviewActivity$1;
.super Ljava/lang/Object;
.source "NotifyPreviewActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/NotifyPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/NotifyPreviewActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/NotifyPreviewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/metamoji/ui/NotifyPreviewActivity$1;->this$0:Lcom/metamoji/ui/NotifyPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/ui/NotifyPreviewActivity$1;->this$0:Lcom/metamoji/ui/NotifyPreviewActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/NotifyPreviewActivity;->finish()V

    return-void
.end method
