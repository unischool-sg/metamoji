.class Lcom/metamoji/ui/dialog/WebDavListView$4$1;
.super Ljava/lang/Object;
.source "WebDavListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavListView$4;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/WebDavListView$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$4$1;->this$1:Lcom/metamoji/ui/dialog/WebDavListView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavListView$4$1;->this$1:Lcom/metamoji/ui/dialog/WebDavListView$4;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/WebDavListView$4;->val$afterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
