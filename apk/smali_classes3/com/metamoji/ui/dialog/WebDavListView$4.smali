.class Lcom/metamoji/ui/dialog/WebDavListView$4;
.super Ljava/lang/Object;
.source "WebDavListView.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavListView;->setList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;

.field final synthetic val$afterAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/lang/Runnable;)V
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

    .line 250
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$4;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavListView$4;->val$afterAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 253
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$4$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/WebDavListView$4$1;-><init>(Lcom/metamoji/ui/dialog/WebDavListView$4;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
