.class Lcom/metamoji/ui/cabinet/ShareViewActivity$8;
.super Ljava/lang/Object;
.source "ShareViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_fromEditor(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$mnotifyFinishEditing(Lcom/metamoji/ui/cabinet/ShareViewActivity;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->clearData()V

    .line 291
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$8;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_shareViewFragment(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/cabinet/ShareViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->clearShareView()V

    return-void
.end method
