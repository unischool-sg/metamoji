.class Lcom/metamoji/ui/dialog/AddWebDav$4$2;
.super Ljava/lang/Object;
.source "AddWebDav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/AddWebDav$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/AddWebDav$4;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/AddWebDav$4;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/metamoji/ui/dialog/AddWebDav$4$2;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$4;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/AddWebDav$4$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/dialog/AddWebDav$4$2;->this$1:Lcom/metamoji/ui/dialog/AddWebDav$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/AddWebDav$4;->this$0:Lcom/metamoji/ui/dialog/AddWebDav;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/AddWebDav$4$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->-$$Nest$mtryConnectAndClose(Lcom/metamoji/ui/dialog/AddWebDav;Landroid/view/View;)V

    return-void
.end method
